resource "azurerm_cdn_frontdoor_custom_domain" "prod" {
  name                     = "prod"
  cdn_frontdoor_profile_id = var.profile_id
  host_name                = "prod.mydomain.com"

  tls {
    certificate_type    = "ManagedCertificate"
    minimum_tls_version = "TLS12"
  }
}

resource "azurerm_cdn_frontdoor_custom_domain" "test" {
  name                     = "test"
  cdn_frontdoor_profile_id = var.profile_id
  host_name                = "test.mydomain.com"

  tls {
    certificate_type    = "ManagedCertificate"
    minimum_tls_version = "TLS12"
  }
}

resource "azurerm_cdn_frontdoor_custom_domain" "dev" {
  name                     = "dev"
  cdn_frontdoor_profile_id = var.profile_id
  host_name                = "dev.mydomain.com"

  tls {
    certificate_type    = "ManagedCertificate"
    minimum_tls_version = "TLS12"
  }
}