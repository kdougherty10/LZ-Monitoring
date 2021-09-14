resource "azurerm_recovery_services_vault" "vault" {
  name                = local.settings.rsv
  location            = azurerm_resource_group.admin.location
  resource_group_name = azurerm_resource_group.admin.name
  sku                 = "Standard"

  soft_delete_enabled = false
}