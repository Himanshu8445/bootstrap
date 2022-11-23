variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "storage_container_name" {
  type = string
}

variable "storage_key_name" {
  type = string
}

variable "location" {
  type = string
}

variable "env_name" {
  type = string
}

variable "env_name_short" {
  type = string
}

variable "eai_number" {
  type = string
}

variable "resource_group_name" {
  type = string
}

######RESOURCE GROUPS#######

variable "resource_groups" {
  description = "Resource groups"
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
  default = {}
}
