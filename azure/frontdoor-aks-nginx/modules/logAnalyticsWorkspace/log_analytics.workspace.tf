resource "azurerm_log_analytics_workspace" "cluster" {
  location            = var.location
  name                = "log-cluster"
  resource_group_name = var.resource_group_name
}