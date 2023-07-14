output "grafana_id" {
  value = azurerm_log_analytics_workspace.grafana.id
}

output "nginx_id" {
  value = azurerm_log_analytics_workspace.nginx.id
}