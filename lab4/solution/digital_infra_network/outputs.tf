output "vnet_id" {
  value = azurerm_virtual_network.this.id
}

output "paas_subnet_id" {
  value = azurerm_subnet.paas_subnet.id
}

output "app_service_subnet_id" {
  value = azurerm_subnet.app_service_subnet.id
}
 
