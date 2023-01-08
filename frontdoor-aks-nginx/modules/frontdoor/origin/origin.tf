resource "azurerm_cdn_frontdoor_origin" "app_1" {
  name = "app1"
  cdn_frontdoor_origin_group_id = var.app1_origin_group_id
  enabled = true

  certificate_name_check_enabled = true

  host_name = "20.227.13.61"
  http_port = 80
  https_port = 443
  origin_host_header = "app1.mydomain.com"
  priority = 1
  weight = 1
}

resource "azurerm_cdn_frontdoor_origin" "app_2" {
  name = "app2"
  cdn_frontdoor_origin_group_id = var.app2_origin_group_id
  enabled = true

  certificate_name_check_enabled = true

  host_name = "20.227.13.61"
  http_port = 80
  https_port = 443
  origin_host_header = "app1.mydomain.com"
  priority = 1
  weight = 1
}