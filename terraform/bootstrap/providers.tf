terraform {
  required_version = "= 1.12.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  storage_use_azuread = true

  subscription_id = "04c793f1-fec7-4106-a1da-c7c70ebc308c"
  tenant_id       = "895ed6cc-0f06-4f90-a291-46e1bd128912"
}