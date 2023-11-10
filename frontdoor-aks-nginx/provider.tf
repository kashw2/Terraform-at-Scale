terraform {
  required_version = "1.6.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.45.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.11.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "stfdaksnginxtf"
    resource_group_name  = "rg-terraform-fdaks"
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