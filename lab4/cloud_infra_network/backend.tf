terraform {
  backend "azurerm" {
    resource_group_name = "rg-tf-state-eus-dev-02"
    storage_account_name = "sttfstateeusdev02"
    container_name = "tfstates"
    key = "network/terraform.state"
  }
}
