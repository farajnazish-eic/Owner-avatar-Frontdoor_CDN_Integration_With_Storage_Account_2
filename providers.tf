terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider

provider "azurerm" {
  features {}
  subscription_id                 = "xxxxxxxxxxxxxxxxxxxx"
  resource_provider_registrations = "none"
}
