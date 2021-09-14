locals {
  settings = yamldecode(file("../../environments/hub/${terraform.workspace}/terraform.yaml"))
  #settings = yamldecode(file("../environments/hub/${terraform.workspace}/terraform.yaml"))
  #settings = yamldecode(file("../../environments/hub/hubeastus2/terraform.yaml"))
}


resource "azurerm_resource_group" "admin" {
   name     = "${local.settings.type}-${local.settings.org}-${local.settings.locationtype}-${local.settings.cloudtype}-${local.settings.rg}"
   location = local.settings.location
   tags     = local.settings.tags
}


resource "azurerm_virtual_network" "admin" {
  name                = "DAR-PRD-NCUS-VNET"
  address_space       = ["10.205.48.0/22"]
  location            = azurerm_resource_group.admin.location
  resource_group_name = azurerm_resource_group.admin.name
}

resource "azurerm_subnet" "admin" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.admin.name
  virtual_network_name = azurerm_virtual_network.admin.name
  address_prefixes     = ["10.205.50.0/24"]
}

resource "azurerm_public_ip" "admin" {
  name                = "adminpip"
  location            = azurerm_resource_group.admin.location
  resource_group_name = azurerm_resource_group.admin.name
  allocation_method   = "Static"
  sku                 = "Standard"
  availability_zone = "No-Zone"
}

resource "azurerm_bastion_host" "admin" {
  name                = "adminbastion"
  location            = azurerm_resource_group.admin.location
  resource_group_name = azurerm_resource_group.admin.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.admin.id
    public_ip_address_id = azurerm_public_ip.admin.id
  }
}