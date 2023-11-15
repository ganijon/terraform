variable "resource_group_name" {
  type =string
}

variable "location" {
  type =string
}

variable "app_service_plan_sku" {
  type    = string
  default = "F1"
}

variable "resource_suffix" {
  type = string
}

variable "snet_app_service_id" {
  type = string
}

variable "snet_paas_id" {
  type = string
}