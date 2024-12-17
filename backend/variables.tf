variable "prefix" {
  description = "The prefix to be added to all resources. Should be your first letter of your first name and last name"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group to create the storage account"
  type        = string
  default     = "terraform-state-rg"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "tfstate"
  validation {
    condition     = (length(var.storage_account_name) + length(var.prefix)) <= 24 && length(var.storage_account_name) >= 3
    error_message = "The storage account name must be between 3 and 24 characters in length"
  }
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "West Europe"
}

variable "container_name" {
  description = "The name of the storage container"
  type        = string
  default     = "terraform"
}