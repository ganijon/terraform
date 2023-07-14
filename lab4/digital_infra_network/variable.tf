# Create a variable.tf file to define :
# 	An environment which accept only “dev”, “stag”, “prod” with “dev” as default value
# 	A domain name with default value to “state”
# 	A location with a default value set to “westeurope”
# 	A resource suffix with a default value


# 	A resource suffix with a default value 
variable "resource_suffix" {
  description = "resource suffix with a default value"
  default     = "gani"
}

# location with a default value set to “westeurope”
variable "location" {
  description = "location with a default value set to “eastus”"
  default     = "eastus"
}

# domain name with default value to “state”
variable "domain" {
  description = "domain name with default value to “network”"
  default     = "network"
}

# environment which accept only “dev”, “stag”, “prod” with “dev” as default value
variable "environment" {
  description = "An environment which accept only “dev”, “stag”, “prod” with “dev” as default value"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "stg", "prd"], var.environment)
    error_message = "Valid values for environment are (dev, stg, prd)."
  }
}
