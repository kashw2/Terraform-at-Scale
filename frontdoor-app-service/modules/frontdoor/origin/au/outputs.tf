output "prod_id" {
  value = azurerm_cdn_frontdoor_origin.prod.id
}

output "test_id" {
  value = azurerm_cdn_frontdoor_origin.test.id
}

output "dev_id" {
  value = azurerm_cdn_frontdoor_origin.dev.id
}