resource "azurerm_cdn_frontdoor_origin" "app" {
  name = "app"
  cdn_frontdoor_origin_group_id = var.app_origin_group_id
  enabled = true

  certificate_name_check_enabled = true

  // Set the hostname to the public ip address of your loadbalancer
  host_name = "20.227.13.61"
  http_port = 80
  https_port = 443
  origin_host_header = "app.mydomain.com"
  priority = 1
  weight = 1
}

resource "azurerm_cdn_frontdoor_origin" "grafana" {
  name = "grafana"
  cdn_frontdoor_origin_group_id = var.grafana_origin_group_id
  enabled = true

  certificate_name_check_enabled = true

  // Set the hostname to the public ip address of your loadbalancer
  host_name = "20.227.13.61"
  http_port = 80
  https_port = 443
  origin_host_header = "grafana.mydomain.com"
  priority = 1
  weight = 1
}