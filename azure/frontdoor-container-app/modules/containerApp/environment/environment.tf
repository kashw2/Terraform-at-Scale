resource "azurerm_container_app_environment" "grafana" {
  name                       = "env-grafana"
  location                   = var.location
  resource_group_name        = var.resource_group_name
  log_analytics_workspace_id = var.grafana_workspace_id
}

resource "azurerm_container_app_environment" "nginx" {
  name                       = "env-nginx"
  location                   = var.location
  resource_group_name        = var.resource_group_name
  log_analytics_workspace_id = var.nginx_workspace_id
}