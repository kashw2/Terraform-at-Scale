terraform {
  required_version = "1.5.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.73.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.43.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "stfdfuncapptf"
    resource_group_name  = "rg-terraform-fdfa"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "506fa660-c543-49a7-b766-aca51cd53ac4"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    application_insights {
      disable_generated_rule = false
    }
    log_analytics_workspace {
      permanently_delete_on_destroy = true
    }
  }
}