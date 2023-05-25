resource "azurerm_resource_group" "au" {
  location = "Australia East"
  name     = "rg-au-east"
}

resource "azurerm_resource_group" "us" {
  location = "East US"
  name     = "rg-us-east"
}