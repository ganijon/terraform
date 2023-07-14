locals {
  resource_lowercase_array  = [lower(var.environment), substr(lower(var.location), 0, 2), lower(var.domain), var.resource_group_name_suffix]
  resource_suffix_kebabcase = join("-", local.resource_lowercase_array)
  app                       = substr(var.application, 0, 3)
  paas_subnet_id            = data.terraform_remote_state.this.outputs.paas_subnet_id
  app_service_subnet_id     = data.terraform_remote_state.this.outputs.app_service_subnet_id
}

