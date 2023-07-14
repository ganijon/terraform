# Create a virtual network within the resource group

resource "azurerm_virtual_network" "this" {
  name                = format("vn-%s", local.resource_suffix_kebab_case)
  address_space       = [var.vnet_address_space]
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
}

# Create a subnets.tf file to define 2 subnets:
# PaasSubnet: 10.0.0.0/24
# AppServiceSubnet: 10.1.0.0/28 with a delegation to “Microsoft.Web/serverFarms“ 
# and and action to “Microsoft.Network/virtualNetworks/subnets/action“

resource "azurerm_subnet" "paas_subnet" {
  name                 = format("sn-paas-%s", local.resource_suffix_kebab_case)
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = var.paas_subnet_address_prefixes
}

resource "azurerm_subnet" "webapp_subnet" {
  name                 = format("sn-webapp-%s", local.resource_suffix_kebab_case)
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = var.webapp_subnet_address_prefixes
  delegation {
    name = "delegation"
    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}
