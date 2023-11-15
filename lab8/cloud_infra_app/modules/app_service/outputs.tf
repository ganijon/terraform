output "app_service_id" {
  value = azurerm_linux_web_app.this.id
}

output "app_service_default_hostname" {
  value = azurerm_linux_web_app.this.default_hostname
}

output "private_endpoint_id" {
  value = azurerm_private_endpoint.this.id
}
