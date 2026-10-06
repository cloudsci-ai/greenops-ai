terraform {
  required_version = ">= 1.8.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.4"
    }
  }

  backend "azurerm" {
    use_cli              = true
    use_azuread_auth     = true
    tenant_id            = "a9b6ecd7-61b4-4f3d-b189-90b20256eb11"
    storage_account_name = "stgreenopstfstate8472"
    container_name       = "tfstate"
    key                  = "bootstrap/terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id                 = var.subscription_id
  storage_use_azuread             = true
  resource_provider_registrations = "none"

  features {}
}