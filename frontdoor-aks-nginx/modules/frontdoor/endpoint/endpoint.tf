resource "azurerm_cdn_frontdoor_endpoint" "app" {
  cdn_frontdoor_profile_id = var.profile_id
  name                     = "app"
}

resource "azurerm_cdn_frontdoor_endpoint" "grafana" {
  cdn_frontdoor_profile_id = var.profile_id
  name                     = "grafana"
}