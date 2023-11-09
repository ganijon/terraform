resource "azurerm_resource_group" "rg_network" {
  name     = format("rg-%s", local.suffix_kebabcase)
  location = var.location
  tags     = local.tags
}
