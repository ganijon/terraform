variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the app service"
}

variable "location" {
  type        = string
  description = "The location/region where the app service should be created"
}

variable "resource_suffix_kebabcase" {
  type        = string
  description = "The suffix to append to resources"
}

variable "storage_account_name" {
  type        = string
  description = "The storage account name to retreive the other states from"
}

variable "storage_account_container_name" {
  type        = string
  description = "The storage account container name to retreive the other states from"
}

variable "app_service_plan_sku" {
  type        = string
  default     = "B1"
  description = "The app service plan SKU"
}

variable "app_service_subnet_id" {
  type        = string
  description = "The subnet id to connect the app service to"
}

variable "paas_subnet_id" {
  type        = string
  description = "The subnet id to add all the PaaS services to"
}


