resource "azurerm_cdn_frontdoor_route" "prod" {
  name                            = "prod"
  cdn_frontdoor_endpoint_id       = var.prod_endpoint_id
  cdn_frontdoor_origin_group_id   = var.prod_group_id
  cdn_frontdoor_custom_domain_ids = [var.prod_custom_domain_id]
  cdn_frontdoor_origin_ids        = [var.prod_au_origin_id, var.prod_us_origin_id]
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

resource "azurerm_cdn_frontdoor_route" "test" {
  name                            = "test"
  cdn_frontdoor_endpoint_id       = var.test_endpoint_id
  cdn_frontdoor_origin_group_id   = var.test_group_id
  cdn_frontdoor_custom_domain_ids = [var.test_custom_domain_id]
  cdn_frontdoor_origin_ids        = [var.test_au_origin_id, var.test_us_origin_id]
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

resource "azurerm_cdn_frontdoor_route" "dev" {
  name                            = "dev"
  cdn_frontdoor_endpoint_id       = var.dev_endpoint_id
  cdn_frontdoor_origin_group_id   = var.dev_group_id
  cdn_frontdoor_custom_domain_ids = [var.dev_custom_domain_id]
  cdn_frontdoor_origin_ids        = [var.dev_au_origin_id, var.dev_us_origin_id]
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