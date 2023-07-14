resource "azurerm_linux_web_app" "dev" {
  location            = var.location
  name                = "app-fd-as-dev-au"
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id
  site_config {

    application_stack {
      docker_image     = "nginx"
      docker_image_tag = "latest"
    }

    always_on = false

  }
}

resource "azurerm_linux_web_app" "test" {
  location            = var.location
  name                = "app-fd-as-test-au"
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id
  site_config {

    application_stack {
      docker_image     = "nginx"
      docker_image_tag = "latest"
    }

    always_on = false

  }
}

resource "azurerm_linux_web_app" "prod" {
  location            = var.location
  name                = "app-fd-as-prod-au"
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id
  site_config {

    application_stack {
      docker_image     = "nginx"
      docker_image_tag = "latest"
    }

    always_on = false

  }
}