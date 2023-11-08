# terraform {
#   backend "local" {}
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "3.56.0"
#     }
#   }
# }

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.64.0"
    }
  }

  backend "azurerm" {}
}
