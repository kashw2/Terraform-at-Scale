resource "azurerm_service_plan" "au" {
  location            = var.au_location
  name                = "plan-au"
  os_type             = "Linux"
  resource_group_name = var.au_resource_group_name
  sku_name            = "F1"
}

resource "azurerm_service_plan" "us" {
  location            = var.us_location
  name                = "plan-us"
  os_type             = "Linux"
  resource_group_name = var.us_resource_group_name
  sku_name            = "F1"
}