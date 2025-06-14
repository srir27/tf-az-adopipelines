variable "subscription_id" {
  description = "The Azure subscription ID where the resources will be created."
  type        = string

}

variable "rg_name" {
  description = "The name of the resource group."
  type        = string

}

variable "rg_location" {
  description = "The Azure region where the resource group will be created."
  type        = string
  validation {
    condition     = contains(["west europe", "india south", "india central"], var.rg_location)
    error_message = "Enter a valid Azure region: north europe, india south, or india central."
  }

}

variable "tags" {
  description = "Tags to assign to the resource group."
  type        = map(string)
  default = {
    "deployment" = "terraform"
    "owner"      = "rsb"
  }
}

variable "vnet_name" {
  description = "The name of the resource group."
  type        = string

}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "snet_name" {
  description = "The name of the resource group."
  type        = string

}

variable "snet_address_prefixes" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/24"]
}