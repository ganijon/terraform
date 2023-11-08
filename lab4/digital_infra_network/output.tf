
output "environment" {
  value = var.environment
}

output "domain" {
  value = var.domain
}

output "location" {
  value = var.location
}

output "vnet_id" {
  value = azurerm_virtual_network.this.name
}

output "paas_subnet_id" {
  value = azurerm_subnet.paas_subnet.name
}

output "webapp_subnet_id" {
  value = azurerm_subnet.webapp_subnet.name
}
