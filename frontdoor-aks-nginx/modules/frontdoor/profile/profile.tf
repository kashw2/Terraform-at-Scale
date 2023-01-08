resource "azurerm_cdn_frontdoor_profile" "profile" {
  name                     = "frontdoor"
  resource_group_name      = var.resource_group_name
  sku_name                 = "Standard_AzureFrontDoor"
  response_timeout_seconds = 30
}