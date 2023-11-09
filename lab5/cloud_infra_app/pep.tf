resource "azurerm_private_endpoint" "this" {
  name                = format("pep-%s", local.suffix_kebabcase)
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  subnet_id           = local.snet_paas_id

  private_service_connection {
    name                           = format("psc-%s", local.suffix_kebabcase)
    private_connection_resource_id = azurerm_linux_web_app.this.id
    subresource_names              = ["sites"]
    is_manual_connection           = false
  }
}
