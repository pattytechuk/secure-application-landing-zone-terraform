resource "azurerm_resource_group" "app" {
  name     = "rg-cirrus-app-prod"
  location = "uksouth"

  tags = {
    project     = "cirrus-landing-zone"
    environment = "prod"
    purpose     = "application"
  }
}

module "networking" {
  source = "../../modules/networking"

  resource_group_name = azurerm_resource_group.app.name
  location            = azurerm_resource_group.app.location
  vnet_name           = "vnet-cirrus-prod"

  address_space                    = ["10.30.0.0/16"]
  integration_subnet_prefixes      = ["10.30.1.0/24"]
  private_endpoint_subnet_prefixes = ["10.30.2.0/24"]
}