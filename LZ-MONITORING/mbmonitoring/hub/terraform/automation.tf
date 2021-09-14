
resource "azurerm_automation_account" "autoaccount" {
  name                =  local.settings.autoacct
  location            =  local.settings.autolocation
  resource_group_name =  azurerm_resource_group.admin.name
  tags                =  local.settings.tags
  sku_name            =  local.settings.autosku

}

