resource "azurerm_service_plan" "this" {
  name                = format("asp-%s", local.suffix_kebabcase)
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "this" {
  name                          = format("web-%s", local.suffix_kebabcase)
  resource_group_name           = azurerm_resource_group.this.name
  location                      = azurerm_service_plan.this.location
  service_plan_id               = azurerm_service_plan.this.id
  virtual_network_subnet_id     = local.snet_app_service_id
  public_network_access_enabled = false
  site_config {}

  lifecycle {
    ignore_changes = [
      virtual_network_subnet_id,
    ]
  }
}

resource "azurerm_app_service_virtual_network_swift_connection" "this" {
  app_service_id = azurerm_linux_web_app.this.id
  subnet_id      = local.snet_app_service_id
}
