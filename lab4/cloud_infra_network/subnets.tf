resource "azurerm_subnet" "snet_paas" {
  name                 = format("snet-paas")
  resource_group_name  = azurerm_resource_group.rg_network.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [format("%s%s", var.vnet_address_prefix, var.paas_subnet_address_suffix)] #["10.0.1.0/24"]
}

resource "azurerm_subnet" "snet_appservice" {
  name                 = format("snet-appservice")
  resource_group_name  = azurerm_resource_group.rg_network.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [format("%s%s", var.vnet_address_prefix, var.app_service_subnet_address_suffix)] #["10.0.1.0/28"]

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}
