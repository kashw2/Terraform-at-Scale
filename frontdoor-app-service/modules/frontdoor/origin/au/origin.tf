resource "azurerm_cdn_frontdoor_origin" "prod" {
  name                          = "prod-au"
  cdn_frontdoor_origin_group_id = var.prod_group_id
  enabled                       = true

  certificate_name_check_enabled = true

  host_name          = var.prod_service_url
  http_port          = 80
  https_port         = 443
  origin_host_header = var.prod_service_url
  priority           = 1
  weight             = 1
}

resource "azurerm_cdn_frontdoor_origin" "test" {
  name                          = "test-au"
  cdn_frontdoor_origin_group_id = var.test_group_id
  enabled                       = true

  certificate_name_check_enabled = true

  host_name          = var.test_service_url
  http_port          = 80
  https_port         = 443
  origin_host_header = var.test_service_url
  priority           = 1
  weight             = 1
}

resource "azurerm_cdn_frontdoor_origin" "dev" {
  name                          = "dev-au"
  cdn_frontdoor_origin_group_id = var.dev_group_id
  enabled                       = true

  certificate_name_check_enabled = true

  host_name          = var.dev_service_url
  http_port          = 80
  https_port         = 443
  origin_host_header = var.dev_service_url
  priority           = 1
  weight             = 1
}