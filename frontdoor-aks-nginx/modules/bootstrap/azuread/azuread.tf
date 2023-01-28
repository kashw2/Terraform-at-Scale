resource "azuread_application" "terraform" {
  display_name = "Terraform (frontdoor-aks-nginx) (Terraform at Scale)"

  lifecycle {
    prevent_destroy = true
  }

}

resource "azuread_service_principal" "terraform" {
  application_id = azuread_application.terraform.application_id

  lifecycle {
    prevent_destroy = true
  }

}

resource "azuread_service_principal_password" "terraform" {
  service_principal_id = azuread_service_principal.terraform.id

  lifecycle {
    prevent_destroy = true
  }

}