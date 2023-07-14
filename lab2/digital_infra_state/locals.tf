# Create a locals.tf file to define two resource suffix which are a concatenation of:
# 	The environment
# 	The first 2 letters of the location in lowercase
# 	The first 3 letters of the domain in lowercase
# 	The resource suffix

locals {
  location_lower_2_letters   = lower(substr(var.location, 0, 5))
  domain_lower_3_letters     = lower(substr(var.domain_name, 0, 5))
  resource_suffix_kebab_case = join("-", [var.environment, local.location_lower_2_letters, local.domain_lower_3_letters, var.resource_suffix])
  resource_suffix_no_dashes  = join("", [var.environment, local.location_lower_2_letters, local.domain_lower_3_letters, var.resource_suffix])
}

output "resource_suffix_kebab_case" {
  value = local.resource_suffix_kebab_case
}

output "resource_suffix_no_dashes" {
  value = local.resource_suffix_no_dashes

}
