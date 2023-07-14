terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.64.0"
    }
  }

  backend "local" {
    # Configuration options
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}


