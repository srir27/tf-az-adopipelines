resource "azurerm_subnet" "snet1" {
  name                 = var.snet_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.snet_address_prefixes

  
}

resource "azurerm_subnet_network_security_group_association" "snet1-nsg1" {
  subnet_id                 = azurerm_subnet.snet1.id
  network_security_group_id = azurerm_network_security_group.nsg1.id
  
}