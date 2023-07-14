resource "azurerm_cdn_frontdoor_origin" "app" {
  name                          = "app"
  cdn_frontdoor_origin_group_id = var.app_origin_group_id
  enabled                       = true

  certificate_name_check_enabled = true

  // This must be your apps url (container app's ingress must be enabled)
  host_name  = "app-nginx.redmeadow-43a159b8.australiaeast.azurecontainerapps.io"
  origin_host_header = "app-nginx.redmeadow-43a159b8.australiaeast.azurecontainerapps.io"
  http_port  = 80
  https_port = 443
  priority   = 1
  weight     = 1
}

resource "azurerm_cdn_frontdoor_origin" "grafana" {
  name                          = "grafana"
  cdn_frontdoor_origin_group_id = var.grafana_origin_group_id
  enabled                       = true

  certificate_name_check_enabled = true

  // This must be your apps url (container app's ingress must be enabled)
  host_name  = "app-grafana.kindsea-c81bad30.australiaeast.azurecontainerapps.io"
  origin_host_header = "app-grafana.kindsea-c81bad30.australiaeast.azurecontainerapps.io"
  http_port  = 80
  https_port = 443
  priority   = 1
  weight     = 1
}