resource "azurerm_cdn_frontdoor_endpoint" "app_1" {
  cdn_frontdoor_profile_id = var.profile_id
  name                     = "app1"
}

resource "azurerm_cdn_frontdoor_endpoint" "app_2" {
  cdn_frontdoor_profile_id = var.profile_id
  name                     = "app2"
}