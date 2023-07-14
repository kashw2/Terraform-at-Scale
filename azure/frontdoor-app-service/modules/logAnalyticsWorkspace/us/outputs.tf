output "prod_id" {
  value = azurerm_log_analytics_workspace.prod.id
}

output "test_id" {
  value = azurerm_log_analytics_workspace.test.id
}

output "dev_id" {
  value = azurerm_log_analytics_workspace.dev.id
}