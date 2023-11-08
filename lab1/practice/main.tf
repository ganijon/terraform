variable "domain" {
  type    = string
  default = "terraform"
}

locals {
  application_name = "labs-01"
  letters          = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
  nodes = {
    count = 3
    size  = "Standard_D2s_v3"
  }

  application_name_short = substr(local.application_name, 0, 3)
  letters_dashed         = join("-", local.letters)
  domain_lowercase       = lower(var.domain)
  rg_name                = format("rg-%s-%s", local.application_name_short, local.domain_lowercase)
}

output "application_name" {
  value = local.application_name_short
}

output "letters_dashed" {
  value = local.letters_dashed
}

output "domain_lowercase" {
  value = local.domain_lowercase
}

output "node_count" {
  value = local.nodes.count
}

output "node_size" {
  value = local.nodes.size
  sensitive = true
}

output "rg_name" {
  value = local.rg_name
  description = <<EOT
  multi-line descriptions
  starts with: <<EOT
  ends with: EOT
  EOT
}
