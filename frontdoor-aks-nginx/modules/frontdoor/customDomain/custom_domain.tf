resource "azurerm_cdn_frontdoor_custom_domain" "app" {
  name                     = "app"
  cdn_frontdoor_profile_id = var.profile_id
  host_name                = "app.mydomain.com"

  tls {
    certificate_type    = "ManagedCertificate"
    minimum_tls_version = "TLS12"
  }
}

resource "azurerm_cdn_frontdoor_custom_domain" "grafana" {
  name                     = "grafana"
  cdn_frontdoor_profile_id = var.profile_id
  host_name                = "grafana.mydomain.com"

  tls {
    certificate_type    = "ManagedCertificate"
    minimum_tls_version = "TLS12"
  }
}