resource "azurerm_resource_group" "rg" {
  name     = format("rg-%s", local.suffix_kebabcase)
  location = var.location
  tags     = local.tags
}
