terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
    azapi = {
      source = "azure/azapi"
    }
  }
}

# Configure the Microsoft Azure Provider

provider "azurerm" {
  features {}
  subscription_id                 = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  resource_provider_registrations = "none"
}
provider "azapi" {
}