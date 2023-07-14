output "prod_id" {
  value = azurerm_cdn_frontdoor_origin_group.prod.id
}

output "test_id" {
  value = azurerm_cdn_frontdoor_origin_group.test.id
}

output "dev_id" {
  value = azurerm_cdn_frontdoor_origin_group.dev.id
}