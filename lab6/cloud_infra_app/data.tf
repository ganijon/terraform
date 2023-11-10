data "azurerm_client_config" "current" {}

data "terraform_remote_state" "this" {
  backend = "azurerm"
  config = {
    storage_account_name = var.storage_account_name
    container_name       = var.storage_account_container_name
    key                  = var.storage_account_blob_network_tfstate_key

    use_azuread_auth = true
    subscription_id  = data.azurerm_client_config.current.subscription_id
    tenant_id        = data.azurerm_client_config.current.tenant_id
  }
}
