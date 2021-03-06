terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ToB_Demo"
    storage_account_name = "tobdemoeastusmay2022"
    container_name       = "tfstate"
    key                  = "codelab.microsoft.tfstate"
  }
}

provider "azurerm" {
  features {}
}