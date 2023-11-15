variable "environment" {
  type        = string
  default     = "dev"
  description = "The environment name"
  validation {
    condition     = can(regex("dev|stag|prod", var.environment))
    error_message = "The environment name value is not valid."
  }
}

variable "domain" {
  type        = string
  default     = "prj1"
  description = "The domain name"
}

variable "application" {
  type        = string
  default     = "hol"
  description = "The application name"
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "The Azure region where the resources should be created"
}

variable "resource_group_name_suffix" {
  type        = string
  default     = "01"
  description = "The resource group name suffix"
  validation {
    condition     = can(regex("[0-9]{2}", var.resource_group_name_suffix))
    error_message = "The resource group name suffix value is not valid."
  }
}

variable "app_service_plan_sku" {
  type        = string
  default     = "B1"
  description = "The app service plan SKU"
}

variable "storage_account_name" {
  type        = string
  description = "The storage account name to retreive the other states from"
}

variable "storage_account_container_name" {
  type        = string
  description = "The storage account container name to retreive the other states from"
}

variable "tags" {
  type        = map(any)
  description = "The custom tags for all resources"
  default     = {}
}
