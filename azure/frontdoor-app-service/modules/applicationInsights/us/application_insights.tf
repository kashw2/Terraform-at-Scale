resource "azurerm_application_insights" "prod" {
  application_type    = "web"
  location            = var.location
  name                = "appi-us-prod"
  resource_group_name = var.resource_group_name

  workspace_id = var.prod_workspace_id
}

resource "azurerm_application_insights" "test" {
  application_type    = "web"
  location            = var.location
  name                = "appi-us-test"
  resource_group_name = var.resource_group_name

  workspace_id = var.test_workspace_id
}

resource "azurerm_application_insights" "dev" {
  application_type    = "web"
  location            = var.location
  name                = "appi-us-dev"
  resource_group_name = var.resource_group_name

  workspace_id = var.dev_workspace_id
}