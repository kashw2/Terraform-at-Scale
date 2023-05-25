output "prod_url" {
  value = azurerm_linux_web_app.prod.default_hostname
}

output "test_url" {
  value = azurerm_linux_web_app.test.default_hostname
}

output "dev_url" {
  value = azurerm_linux_web_app.dev.default_hostname
}