output "vnet1_name" {
  description = "The name of the vnet1."
  value       = azurerm_virtual_network.vnet1.name
  
}

output "vnet1_address_space" {
  description = "The address space of the vnet1."
  value       = azurerm_virtual_network.vnet1.address_space
  
}
output "snet1_name" {
  description = "The name of the subnet1."
  value       = azurerm_subnet.snet1.name
  
}

output "snet1_address_prefixes" {
  description = "The address prefixes of the subnet1."
  value       = azurerm_subnet.snet1.address_prefixes
  
}