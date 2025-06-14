variable "rg_name" {
  description = "The name of the resource group."
  type        = string
  
}

variable "rg_location" {
  description = "The Azure region where the resource group will be created."
  type        = string
}

variable "tags" {
  description = "Tags to assign to the resource group."
  type        = map(string)
  default     = {
    "deployment" = "terraform"
    "owner"       = "rsb"
  }
}

variable "vnet_name" {
  description = "The name of the resource group."
  type        = string
  
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  
}

variable "snet_name" {
  description = "The name of the resource group."
  type        = string
  
}

variable "snet_address_prefixes" {
  description = "The address space for the virtual network."
  type        = list(string)

}
