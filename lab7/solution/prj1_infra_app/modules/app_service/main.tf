resource "azurerm_service_plan" "this" {
  name                = format("asp-%s", var.resource_suffix_kebabcase)
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = var.app_service_plan_sku
}

resource "azurerm_linux_web_app" "this" {
  name                          = format("app-%s", var.resource_suffix_kebabcase)
  resource_group_name           = var.resource_group_name
  location                      = azurerm_service_plan.this.location
  service_plan_id               = azurerm_service_plan.this.id
  public_network_access_enabled = false
  # virtual_network_subnet_id     = local.app_service_subnet_id

  site_config {
  }

  lifecycle {
    ignore_changes = [
      virtual_network_subnet_id,
    ]
  }
}

resource "azurerm_app_service_virtual_network_swift_connection" "this" {
  app_service_id = azurerm_linux_web_app.this.id
  subnet_id      = var.app_service_subnet_id
}
