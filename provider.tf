terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
  backend "azurerm" {
    # storage_account_name = "webhookstoreaccount"
    # container_name       = "webhookcontainer"
    # key                  = "webhook.tfstate"
    # resource_group_name  = "rg-webhookstorageaccount"
  }
}

provider "azurerm" {
  features {}
}