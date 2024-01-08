variable "caf_prefixes" {
  type        = list(string)
  default     = []
  description = "Prefixes to use for caf naming."
}

variable "custom_location" {
  type        = string
  default     = ""
  description = "Specifies a custom location for the resource."
}

variable "custom_name" {
  type        = string
  default     = ""
  description = "Specifies a custom name for the resource."
}

variable "custom_tags" {
  type        = map(string)
  default     = {}
  description = "The custom tags to add on the resource."
}

variable "daily_quota_gb" {
  type        = number
  default     = 1
  description = "The workspace daily quota for ingestion in GB. To remove limit, set to -1."
}

variable "description" {
  type        = string
  default     = ""
  description = "The resource description."
}

variable "instance_index" {
  type = number
  validation {
    condition     = var.instance_index > 0 && var.instance_index < 100
    error_message = "Must be a 2 dights number."
  }
  description = "Resource type index on the resource group."
}

variable "internet_ingestion_enabled" {
  type        = bool
  default     = false
  description = "Should the Log Analytics Workflow support ingestion over the Public Internet ?"
}

variable "internet_query_enabled" {
  type        = bool
  default     = true
  description = "Should the Log Analytics Workflow support querying over the Public Internet ?"
}

variable "name_separator" {
  type        = string
  description = "Name separator"
  default     = ""
}

variable "reservation_capcity_in_gb_per_day" {
  type        = number
  default     = null
  description = "The capacity reservation level in GB for this workspace. Must be in increments of 100 between 100 and 5000."
}

variable "resource_group_name" {
  type        = string
  description = "Specifies the parent resource group name."
}

variable "retention_in_days" {
  type        = number
  default     = 30
  description = "The workspace data retention in days. Possible values are between 30 and 730."
}
