locals {
  domain_short = substr(var.domain, 0, 7)

  location       = lower(var.location)
  location_short = var.az_region_abbr_map[local.location]

  environment = lower(var.environment)

  resource_prefix = lower(var.resource_prefix)
  resource_suffix = lower(var.resource_suffix)

  suffix_parts     = compact([local.resource_prefix, local.domain_short, local.location_short, local.environment, local.resource_suffix])
  suffix_kebabcase = join("-", local.suffix_parts)

  tags = {
    application = var.application
    environment = var.environment
    owners      = var.owners
    scope       = "lab7"
  }

  snet_paas_id = data.terraform_remote_state.this.outputs.snet_paas
  snet_app_service_id = data.terraform_remote_state.this.outputs.snet_app_service
}
