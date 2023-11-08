locals {
  domain_short = substr(var.domain, 0, 5)

  location       = lower(var.location)
  location_short = var.az_region_abbr_map[local.location]

  environment = lower(var.environment)

  resource_prefix = lower(var.resource_prefix)
  resource_suffix = lower(var.resource_suffix)

  suffix_parts     = compact([local.resource_prefix, local.domain_short, local.location_short, local.environment, local.resource_suffix])
  suffix_kebabcase = join("-", local.suffix_parts)
  suffix_snakecase = join("_", local.suffix_parts)
  suffix_no_dashes = join("", local.suffix_parts)

  tags = {
    application = var.application
    environment = var.environment
    owners      = var.owners
  }
}

output "suffix_kebabcase" {
  value = local.suffix_kebabcase
}

output "suffix_snakecase" {
  value = local.suffix_snakecase
}

output "suffix_no_dashes" {
  value = local.suffix_no_dashes
}
