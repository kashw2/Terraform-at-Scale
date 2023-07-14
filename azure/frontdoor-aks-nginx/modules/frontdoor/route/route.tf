resource "azurerm_cdn_frontdoor_route" "app" {
  name                            = "app"
  cdn_frontdoor_endpoint_id       = var.app_endpoint_id
  cdn_frontdoor_origin_group_id   = var.app_group_id
  cdn_frontdoor_custom_domain_ids = [var.app_custom_domain_id]
  cdn_frontdoor_origin_ids        = [var.app_origin_id]
  link_to_default_domain          = true
  enabled                         = true

  forwarding_protocol    = "MatchRequest"
  https_redirect_enabled = true
  patterns_to_match      = ["/*"]
  supported_protocols    = ["Http", "Https"]

  cache {
    query_string_caching_behavior = "IgnoreQueryString"
  }
}

resource "azurerm_cdn_frontdoor_route" "grafana" {
  name                            = "grafana"
  cdn_frontdoor_endpoint_id       = var.grafana_endpoint_id
  cdn_frontdoor_origin_group_id   = var.grafana_group_id
  cdn_frontdoor_custom_domain_ids = [var.grafana_custom_domain_id]
  cdn_frontdoor_origin_ids        = [var.grafana_origin_id]
  link_to_default_domain          = true
  enabled                         = true

  forwarding_protocol    = "MatchRequest"
  https_redirect_enabled = true
  patterns_to_match      = ["/*"]
  supported_protocols    = ["Http", "Https"]

  cache {
    query_string_caching_behavior = "IgnoreQueryString"
  }
}