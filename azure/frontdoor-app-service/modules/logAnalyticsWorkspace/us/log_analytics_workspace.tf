resource "azurerm_log_analytics_workspace" "prod" {
  location            = var.location
  name                = "log-au-prod"
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}

resource "azurerm_log_analytics_workspace" "test" {
  location            = var.location
  name                = "log-au-test"
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}

resource "azurerm_log_analytics_workspace" "dev" {
  location            = var.location
  name                = "log-au-dev"
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}