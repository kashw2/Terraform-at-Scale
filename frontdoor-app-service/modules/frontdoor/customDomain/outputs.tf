output "prod_id" {
  value = azurerm_cdn_frontdoor_custom_domain.prod.id
}

output "test_id" {
  value = azurerm_cdn_frontdoor_custom_domain.test.id
}

output "dev_id" {
  value = azurerm_cdn_frontdoor_custom_domain.dev.id
}