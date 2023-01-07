resource "azuread_application" "terraform" {
  display_name = "Terraform (frontdoor-aks-nginx) (Terraform at Scale)"
}

resource "azuread_service_principal" "terraform" {
  application_id = azuread_application.terraform.application_id
}

resource "azuread_service_principal_password" "terraform" {
  service_principal_id = azuread_service_principal.terraform.id
}