terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
    azapi = {
      source = "Azure/azapi"
    }
  }
}

provider "azapi" {
}
# Configure the Microsoft Azure Provider

provider "azurerm" {
  features {}
  subscription_id                 = "664b6097-19f2-42a3-be95-a4a6b4069f6b"
  resource_provider_registrations = "none"
}
