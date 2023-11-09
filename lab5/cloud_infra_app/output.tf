
output "suffix_kebabcase" {
  value = local.suffix_kebabcase
}

output "subscription_id" {
  value = data.azurerm_client_config.current.subscription_id
}

output "tenant_id" {
  value = data.azurerm_client_config.current.tenant_id
}

output "webapp_id" {
  value = azurerm_linux_web_app.this.id
}

output "private_endpoint_id" {
  value = azurerm_private_endpoint.this.id
}
