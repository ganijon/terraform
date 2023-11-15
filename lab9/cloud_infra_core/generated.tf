# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/subscriptions/56dfbfd9-5a52-4e99-a925-2bffb4c7788d/resourceGroups/rg-tf-core-eus-dev-00"
resource "azurerm_resource_group" "this" {
  location   = "eastus"
  managed_by = null
  name       = "rg-tf-core-eus-dev-00"
  tags = {
    application = "Lab09"
    environment = "DEV"
    owners      = "Gani, GR, SESA470971"
  }
}

# __generated__ by Terraform from "/subscriptions/56dfbfd9-5a52-4e99-a925-2bffb4c7788d/resourceGroups/rg-tf-core-eus-dev-00/providers/Microsoft.ContainerRegistry/registries/crtfcoreeusdev00"
resource "azurerm_container_registry" "this" {
  admin_enabled          = false
  anonymous_pull_enabled = false
  data_endpoint_enabled  = false
  encryption = [{
    enabled            = false
    # identity_client_id = ""
    # key_vault_key_id   = ""
  }]
  export_policy_enabled         = true
  location                      = "eastus"
  name                          = "crtfcoreeusdev00"
  network_rule_bypass_option    = "AzureServices"
  network_rule_set              = []
  public_network_access_enabled = true
  quarantine_policy_enabled     = false
  resource_group_name           = "rg-tf-core-eus-dev-00"
  retention_policy = [{
    days    = 7
    enabled = false
  }]
  sku = "Basic"
  tags = {
    application = "Lab09"
    environment = "DEV"
    owners      = "Gani, GR, SESA470971"
  }
  trust_policy = [{
    enabled = false
  }]
  zone_redundancy_enabled = false
}
