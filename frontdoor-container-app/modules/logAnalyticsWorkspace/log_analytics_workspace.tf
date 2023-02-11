resource "azurerm_log_analytics_workspace" "grafana" {
  location            = var.location
  name                = "log-grafana"
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}

resource "azurerm_log_analytics_workspace" "nginx" {
  location            = var.location
  name                = "log-nginx"
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}