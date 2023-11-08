resource "azurerm_storage_account" "st" {
  name                     = format("st%s", local.suffix_no_dashes)
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.tags
}

resource "azurerm_storage_container" "stc" {
  name                  = "tfstates"
  storage_account_name  = azurerm_storage_account.st.name
  container_access_type = "private"
}

# resource "azurerm_storage_blob" "stb" {
#   name                   = "file.zip"
#   storage_account_name   = azurerm_storage_account.st.name
#   storage_container_name = azurerm_storage_container.stc.name
#   type                   = "Block"
#   source                 = "file.zip"
# }
