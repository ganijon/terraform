
output "suffix_kebabcase" {
  value = local.suffix_kebabcase
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "snet_paas" {
  value = azurerm_subnet.snet_paas.id
}

output "snet_app_service" {
  value = azurerm_subnet.snet_appservice.id
}