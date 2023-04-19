variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "name" {
  description = "Required. Name of the Application Insights."
  type        = string
}

variable "app_insights_type" {
  default     = "web"
  description = "Optional. Application type."
  type        = string
  validation {
    condition     = can(regex("(web|other)", var.app_insights_type))
    error_message = "The app insights type specified is not correct."
  }
}

variable "workspace_resource_id" {
  description = "Resource ID of the log analytics workspace which the data will be ingested to. If left empty, applicationInsights will create one for us. This property is required to create an application with this API version. Applications from older versions will not have this property."
  type        = string
}

variable "app_insights_type" {
  default     = "web"
  description = "Optional. The network access type for accessing Application Insights ingestion. - Enabled or Disabled."
  type        = string
  validation {
    condition     = can(regex("(web|other)", var.app_insights_type))
    error_message = "The app insights type specified is not correct."
  }
}

variable "public_network_access_for_ingestion" {
  default     = true
  description = "Optional. The network access type for accessing Application Insights ingestion. - Enabled or Disabled."
  type        = bool
}

variable "public_network_access_for_query" {
  default     = true
  description = "Optional. The network access type for accessing Application Insights query. - Enabled or Disabled."
  type        = bool
}

variable "retention_in_days" {
  default     = 90
  description = "Optional. Retention period in days."
  type        = number
  validation {
    condition     = can(regex("30|60|90|120|180|270|365|550|730", var.retention_in_days))
    error_message = "The number of retention days specified is not correct."
  }
}

variable "sampling_percentage" {
  default     = 100
  description = "Optional. Percentage of the data produced by the application being monitored that is being sampled for Application Insights telemetry."
  type        = number
  validation {
    condition     = length(var.name) >= 0 && length(var.name) <= 100
    error_message = "The sampling percentage variable name must be betwenn 0 to 100."
  }
}

variable "location" {
  description = "Optional. Location for all Resources."
  type        = string
}

variable "tags" {
  type        = map(any)
  description = "Optional. Tags of the resource.'"
}
