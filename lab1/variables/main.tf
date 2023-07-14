variable "domain" {
  type    = string
  default = "HashiCorp"
}

locals {
  application_name = "training"
  letters          = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
  nodes = {
    count = 3
    size  = "Standard_D2s_v3"
  }

  application_name_short = substr(local.application_name, 0, 3)
  letters_dashed         = join("-", local.letters)
  domain_lowercase       = lower(var.domain)
  resource_group_name    = format("rg-%s-%s", local.application_name_short, local.domain_lowercase)
}

output "application_name" {
  value       = local.application_name_short
  description = "The first 3 letters of the app name"
}

output "letters_dashed" {
  value       = local.letters_dashed
  description = "Output the letters array in one single string with dashes to separate each letter"
}

output "domain_lowercase" {
  value       = local.domain_lowercase
  description = "Create a variable string called domain and when you output it make sure it’s lowercase"
}

output "node_count" {
  value       = local.nodes.count
  description = "Return the node count in a dedicated output"
}

output "node_size" {
  value       = local.nodes.size
  description = "Return the node size in a dedicated output"
}


# Output a resource group name which will be a concatenation of the official abbreviation “rg” 
# and the application name and domain formatted previously. Dashes must separate each part. 
#	E.g. rg-<application name>-<domain> 

output "resource_group_name" {
  value       = local.resource_group_name
  description = <<EOT
    Output a resource group name which will be a concatenation of the official abbreviation “rg” 
    and the application name and domain formatted previously. Dashes must separate each part.
    e.g. rg-<application name>-<domain>
    EOT
}
