terraform {
  required_version = "= 1.12.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 4.81.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}

  subscription_id = "c589f5d8-14d5-4434-bb05-16ccc143c2e3"
  tenant_id       = "895ed6cc-0f06-4f90-a291-46e1bd128912"
}

provider "azurerm" {
  alias = "shared"

  features {}

  subscription_id = "04c793f1-fec7-4106-a1da-c7c70ebc308c"
  tenant_id       = "895ed6cc-0f06-4f90-a291-46e1bd128912"
}