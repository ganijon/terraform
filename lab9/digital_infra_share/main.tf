resource "azurerm_resource_group" "this" {
  location = "westeurope"
  name     = "rg-dev-we-share-gr1"
}

resource "azurerm_container_registry" "this" {
  location            = "westeurope"
  name                = "crdevwesharegr1"
  resource_group_name = "rg-dev-we-share-gr1"
  sku                 = "Basic"
  tags = {
    Environment = "Dev"
  }
  depends_on = [
    azurerm_resource_group.this,
  ]
}

# resource "azurerm_container_registry_scope_map" "res-2" {
#   actions                 = ["repositories/*/metadata/read", "repositories/*/metadata/write", "repositories/*/content/read", "repositories/*/content/write", "repositories/*/content/delete"]
#   container_registry_name = "crdevwesharegr1"
#   description             = "Can perform all read, write and delete operations on the registry"
#   name                    = "repositories-admin"
#   resource_group_name     = "rg-dev-we-share-gr1"
#   depends_on = [
#     azurerm_container_registry.res-1,
#   ]
# }

# resource "azurerm_container_registry_scope_map" "res-3" {
#   actions                 = ["repositories/*/content/read"]
#   container_registry_name = "crdevwesharegr1"
#   description             = "Can pull any repository of the registry"
#   name                    = "repositories-pull"
#   resource_group_name     = "rg-dev-we-share-gr1"
#   depends_on = [
#     azurerm_container_registry.res-1,
#   ]
# }

# resource "azurerm_container_registry_scope_map" "res-4" {
#   actions                 = ["repositories/*/content/read", "repositories/*/content/write"]
#   container_registry_name = "crdevwesharegr1"
#   description             = "Can push to any repository of the registry"
#   name                    = "repositories-push"
#   resource_group_name     = "rg-dev-we-share-gr1"
#   depends_on = [
#     azurerm_container_registry.res-1,
#   ]
# }
