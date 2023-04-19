variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "name" {
  description = "Name of the resource Virtual Network (The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens)'"
  type        = string
  validation {
    condition     = length(var.name) >= 2 && length(var.name) <= 80
    error_message = "The Virtual Network variable name must be 2-80 characters in length."
  }
}

variable "location" {
  description = "Azure Region where the resource will be deployed in"
  type        = string
}

variable "tags" {
  type        = map(any)
  description = "key-value pairs as tags, to identify the resource"
}

variable "vnet_address_prefixes" {
  type        = list(string)
  description = "Array, CIDRs to be allocated to the new vnet i.e. 192.168.0.0/24"
}

variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
  }))
  description = "Pass an array of objects for all the required subnets"
}

variable "ddos_protection_plan_id" {
  default     = ""
  description = "Optional. Resource ID of the DDoS protection plan to assign the VNET to. If it's left blank, DDoS protection will not be configured. If it's provided, the VNET created by this template will be attached to the referenced DDoS protection plan. The DDoS protection plan can exist in the same or in a different subscription."
  type        = string
}
