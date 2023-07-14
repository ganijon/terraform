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
  default     = "nwk"
  description = "The domain name"
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "The Azure region where the resources should be created"
}

variable "resource_group_name_suffix" {
  type        = string
  default     = "gr1"
  description = "The resource group name suffix"
  validation {
    condition     = can(regex("gr[0-9]{1}", var.resource_group_name_suffix))
    error_message = "The resource group name suffix value is not valid."
  }
}

variable "vnet_address_prefix" {
  type        = string
  description = "Vnet Address prefix"
}

variable "vnet_address_suffix" {
  type        = string
  description = "Vnet Address suffix"
}

variable "paas_subnet_address_suffix" {
  type        = string
  description = "Platform as a Service Subnet Address Suffix"
}

variable "app_service_subnet_address_suffix" {
  type        = string
  description = "Pass Subnet Address Suffix"
}

