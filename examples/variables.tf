variable "common_tags" {
  description = "Tags that can be added by the end user of the module"
  type        = map(string)
  default     = {}
}

variable "subscription_id" {
  description = "Azure subscription ID used by the example configuration"
  type        = string
  default     = ""
}
