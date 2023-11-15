resource "azurerm_private_endpoint" "this" {
  name                = format("pep-%s", var.resource_suffix)
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = var.snet_paas_id

  private_service_connection {
    name                           = format("psc-%s", var.resource_suffix)
    private_connection_resource_id = azurerm_linux_web_app.this.id
    subresource_names              = ["sites"]
    is_manual_connection           = false
  }
}
