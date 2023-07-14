resource "azurerm_cdn_frontdoor_endpoint" "prod" {
  cdn_frontdoor_profile_id = var.profile_id
  name                     = "prod"
}

resource "azurerm_cdn_frontdoor_endpoint" "test" {
  cdn_frontdoor_profile_id = var.profile_id
  name                     = "test"
}

resource "azurerm_cdn_frontdoor_endpoint" "dev" {
  cdn_frontdoor_profile_id = var.profile_id
  name                     = "dev"
}