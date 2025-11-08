variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Location of the Resource Group"
  type        = string
}

variable "timeouts" {
  description = "Customizable timeouts for Resource Group"
  type = object({
    create = optional(string, null)
    read   = optional(string, null)
    update = optional(string, null)
    delete = optional(string, null)
  })

  default  = {}
  nullable = false
}

variable "common_tags" {
  description = "Tags that can be added by the end user of the module"
  type        = map(string)
  default     = {}
}
