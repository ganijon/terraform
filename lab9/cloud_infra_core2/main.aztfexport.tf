resource "azurerm_resource_group" "res-0" {
  location = "eastus"
  name     = "rg-tf-core-eus-dev-00"
  tags = {
    application = "Lab09"
    environment = "DEV"
    owners      = "Gani, GR, SESA470971"
  }
}
resource "azurerm_container_registry" "res-1" {
  location            = "eastus"
  name                = "crtfcoreeusdev00"
  resource_group_name = "rg-tf-core-eus-dev-00"
  sku                 = "Basic"
  tags = {
    application = "Lab09"
    environment = "DEV"
    owners      = "Gani, GR, SESA470971"
  }
}
# resource "azurerm_container_registry_scope_map" "res-2" {
#   actions                 = ["repositories/*/metadata/read", "repositories/*/metadata/write", "repositories/*/content/read", "repositories/*/content/write", "repositories/*/content/delete"]
#   container_registry_name = "crtfcoreeusdev00"
#   description             = "Can perform all read, write and delete operations on the registry"
#   name                    = "_repositories_admin"
#   resource_group_name     = "rg-tf-core-eus-dev-00"
#   depends_on = [
#     azurerm_container_registry.res-1,
#   ]
# }
# resource "azurerm_container_registry_scope_map" "res-3" {
#   actions                 = ["repositories/*/content/read"]
#   container_registry_name = "crtfcoreeusdev00"
#   description             = "Can pull any repository of the registry"
#   name                    = "_repositories_pull"
#   resource_group_name     = "rg-tf-core-eus-dev-00"
#   depends_on = [
#     azurerm_container_registry.res-1,
#   ]
# }
# resource "azurerm_container_registry_scope_map" "res-4" {
#   actions                 = ["repositories/*/content/read", "repositories/*/metadata/read"]
#   container_registry_name = "crtfcoreeusdev00"
#   description             = "Can perform all read operations on the registry"
#   name                    = "_repositories_pull_metadata_read"
#   resource_group_name     = "rg-tf-core-eus-dev-00"
#   depends_on = [
#     azurerm_container_registry.res-1,
#   ]
# }
# resource "azurerm_container_registry_scope_map" "res-5" {
#   actions                 = ["repositories/*/content/read", "repositories/*/content/write"]
#   container_registry_name = "crtfcoreeusdev00"
#   description             = "Can push to any repository of the registry"
#   name                    = "_repositories_push"
#   resource_group_name     = "rg-tf-core-eus-dev-00"
#   depends_on = [
#     azurerm_container_registry.res-1,
#   ]
# }
# resource "azurerm_container_registry_scope_map" "res-6" {
#   actions                 = ["repositories/*/metadata/read", "repositories/*/metadata/write", "repositories/*/content/read", "repositories/*/content/write"]
#   container_registry_name = "crtfcoreeusdev00"
#   description             = "Can perform all read and write operations on the registry"
#   name                    = "_repositories_push_metadata_write"
#   resource_group_name     = "rg-tf-core-eus-dev-00"
#   depends_on = [
#     azurerm_container_registry.res-1,
#   ]
# }
