resource "azurerm_cdn_frontdoor_custom_domain" "app_1" {
  name                     = "app1"
  cdn_frontdoor_profile_id = var.profile_id
  host_name                = "app1.mydomain.com"

  tls {
    certificate_type    = "ManagedCertificate"
    minimum_tls_version = "TLS12"
  }
}

resource "azurerm_cdn_frontdoor_custom_domain" "app_2" {
  name                     = "app2"
  cdn_frontdoor_profile_id = var.profile_id
  host_name                = "app2.mydomain.com"

  tls {
    certificate_type    = "ManagedCertificate"
    minimum_tls_version = "TLS12"
  }
}