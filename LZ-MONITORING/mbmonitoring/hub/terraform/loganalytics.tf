
resource "azurerm_log_analytics_workspace" "loganalytics" {
  name                = local.settings.loganalytics
  location            = local.settings.autolocation2
  resource_group_name = azurerm_resource_group.admin.name
  sku                 = local.settings.lasku
  retention_in_days   = local.settings.retention
  tags                = local.settings.tags

}
/*
 resource "azurerm_log_analytics_solution" "log_AD" {
  solution_name         = local.settings.solution1
  location              = local.settings.autolocation2
  resource_group_name   = azurerm_resource_group.admin.name
  workspace_resource_id = azurerm_log_analytics_workspace.loganalytics.id
  workspace_name        = azurerm_log_analytics_workspace.loganalytics.name

  plan {
    publisher = "Microsoft"
    product   = local.settings.product1
    
  }
}

resource "azurerm_log_analytics_solution" "log_antix" {
  solution_name         = local.settings.solution2
  location              = local.settings.autolocation2
  resource_group_name   = azurerm_resource_group.admin.name
  workspace_resource_id = azurerm_log_analytics_workspace.loganalytics.id
  workspace_name        = azurerm_log_analytics_workspace.loganalytics.name

  plan {
    publisher = "Microsoft"
    product   = local.settings.product2
  }
}

resource "azurerm_log_analytics_solution" "log_agent_health" {
  solution_name         = local.settings.solution3
  location              = local.settings.autolocation2
  resource_group_name   = azurerm_resource_group.admin.name
  workspace_resource_id = azurerm_log_analytics_workspace.loganalytics.id
  workspace_name        = azurerm_log_analytics_workspace.loganalytics.name

  plan {
    publisher = "Microsoft"
    product   = local.settings.product3
  }
}

resource "azurerm_log_analytics_solution" "log_updates" {
  solution_name         = local.settings.solution4
  location              = local.settings.autolocation2
  resource_group_name   = azurerm_resource_group.admin.name
  workspace_resource_id = azurerm_log_analytics_workspace.loganalytics.id
  workspace_name        = azurerm_log_analytics_workspace.loganalytics.name

  plan {
    publisher = local.settings.publisher
    product   = local.settings.product4
  }
}

resource "azurerm_log_analytics_solution" "log_network" {
  solution_name         = local.settings.solution5
  location              = local.settings.autolocation2
  resource_group_name   = azurerm_resource_group.admin.name
  workspace_resource_id = azurerm_log_analytics_workspace.loganalytics.id
  workspace_name        = azurerm_log_analytics_workspace.loganalytics.name

  plan {
    publisher = local.settings.publisher
    product   = local.settings.product5
  }
}

resource "azurerm_log_analytics_solution" "log_keyvault" {
  solution_name         = local.settings.solution6
  location              = local.settings.autolocation2
  resource_group_name   = azurerm_resource_group.admin.name
  workspace_resource_id = azurerm_log_analytics_workspace.loganalytics.id
  workspace_name        = azurerm_log_analytics_workspace.loganalytics.name

  plan {
    publisher = local.settings.publisher
    product   = local.settings.product6
  }
}
resource "azurerm_log_analytics_solution" "log_servicedesk" {
  solution_name         = local.settings.solution7
  location              =local.settings.autolocation2
  resource_group_name   = azurerm_resource_group.admin.name
  workspace_resource_id = azurerm_log_analytics_workspace.loganalytics.id
  workspace_name        = azurerm_log_analytics_workspace.loganalytics.name

  plan {
    publisher = local.settings.publisher
    product   = local.settings.product7
  }
}

resource "azurerm_log_analytics_solution" "log_activitylog" {
  solution_name         = local.settings.solution8
  location              =local.settings.autolocation2
  resource_group_name   = azurerm_resource_group.admin.name
  workspace_resource_id = azurerm_log_analytics_workspace.loganalytics.id
  workspace_name        = azurerm_log_analytics_workspace.loganalytics.name

  plan {
    publisher = local.settings.publisher
    product   = local.settings.product8
  }

} 
*/