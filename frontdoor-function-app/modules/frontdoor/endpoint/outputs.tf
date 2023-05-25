output "prod_id" {
  value = azurerm_cdn_frontdoor_endpoint.prod.id
}

output "test_id" {
  value = azurerm_cdn_frontdoor_endpoint.test.id
}

output "dev_id" {
  value = azurerm_cdn_frontdoor_endpoint.dev.id
}