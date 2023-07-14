# Create an sto.tf file to define a basic storage account:
# 	The naming convention is st-<your-resource-suffix-lowercase>
# 	Account tier: Standard
# 	Account replication type: LRS

#  Inside the Storage Account create one private container called “states”

resource "azurerm_storage_account" "st" {
  name                     = format("st%s", local.resource_suffix_no_dashes)
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
    domain = var.domain_name
  }
}

resource "azurerm_storage_container" "stc" {
  name                  = "states"
  storage_account_name  = azurerm_storage_account.st.name
  container_access_type = "private"
  #   tags = {
  #   environment = var.environment
  #   domain = var.domain_name
  # }
}
