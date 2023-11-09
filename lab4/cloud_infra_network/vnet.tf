resource "azurerm_virtual_network" "vnet" {
  name                = format("vnet-%s", local.suffix_kebabcase)
  resource_group_name = azurerm_resource_group.rg_network.name
  location            = azurerm_resource_group.rg_network.location
  address_space       = [format("%s%s", var.vnet_address_prefix, var.vnet_address_suffix)] # ["10.0.0.0/16"]
  tags                = local.tags
}
