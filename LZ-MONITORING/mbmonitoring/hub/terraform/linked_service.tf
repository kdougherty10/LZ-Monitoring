

resource "azurerm_log_analytics_linked_service" "example" {
  resource_group_name = azurerm_resource_group.admin.name
  workspace_id        = azurerm_log_analytics_workspace.loganalytics.id
  read_access_id      = azurerm_automation_account.autoaccount.id
}