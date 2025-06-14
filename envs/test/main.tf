module "resourceGroup" {
  source = "../modules/0-rg"

  rg_name     = var.rg_name
  rg_location = var.rg_location
  tags        = var.tags

}

module "virtualNetwork" {
  source = "../modules/1-vnet"

  vnet_name             = var.vnet_name
  vnet_address_space    = var.vnet_address_space
  rg_name               = module.resourceGroup.rg_name
  rg_location           = module.resourceGroup.rg_location
  tags                  = var.tags
  snet_address_prefixes = var.snet_address_prefixes
  snet_name             = var.snet_name

}

