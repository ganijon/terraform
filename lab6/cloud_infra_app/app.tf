module "app_service" {
  source               = "./modules/app_service"
  resource_group_name  = azurerm_resource_group.this.name
  location             = azurerm_resource_group.this.location
  resource_suffix      = local.suffix_kebabcase
  app_service_plan_sku = var.app_service_plan_sku
  snet_app_service_id  = local.snet_app_service_id
  snet_paas_id         = local.snet_paas_id
}
