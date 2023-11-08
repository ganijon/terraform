resource "azurerm_storage_account" "st_tf_state" {
  name                     = format("st%s", local.suffix_no_dashes)
  resource_group_name      = azurerm_resource_group.rg_tf_state.name
  location                 = azurerm_resource_group.rg_tf_state.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.tags
  depends_on               = [azurerm_resource_group.rg_tf_state]
}

resource "azurerm_storage_container" "stc_tf_state" {
  name                  = "tfstates"
  storage_account_name  = azurerm_storage_account.st_tf_state.name
  container_access_type = "private"
  depends_on            = [azurerm_storage_account.st_tf_state]
}

# resource "azurerm_storage_blob" "stb" {
#   name                   = "file.zip"
#   storage_account_name   = azurerm_storage_account.st.name
#   storage_container_name = azurerm_storage_container.stc.name
#   type                   = "Block"
#   source                 = "file.zip"
# }
