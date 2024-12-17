terraform {
  # backend "azurerm" {
  #   resource_group_name  = "tbernardo-terraform-state-rg"
  #   storage_account_name = "tbernardotfstate"
  #   container_name       = "terraform"
  #   key                  = "terraform.tfstate"
  # }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.11.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "49175c01-02a7-44bb-b379-2c06f4aae5b4"
  features {}
}