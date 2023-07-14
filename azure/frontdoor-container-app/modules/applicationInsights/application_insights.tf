resource "azurerm_application_insights" "grafana" {
  application_type    = "web"
  location            = var.location
  name                = "appi-grafana"
  resource_group_name = var.resource_group_name

  workspace_id = var.grafana_workspace_id
}

resource "azurerm_application_insights" "nginx" {
  application_type    = "web"
  location            = var.location
  name                = "appi-nginx"
  resource_group_name = var.resource_group_name

  workspace_id = var.nginx_workspace_id
}