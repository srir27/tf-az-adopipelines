tags = {
  deployment = "terraform-pipelines"
  owner      = "rsb"

}

#resourceGroup
rg_location = "west europe"
rg_name     = "tf-ado-rg"

#vitrualNetwork
vnet_name             = "vnet1"
vnet_address_space    = ["10.0.0.0/16"]
snet_name             = "snet1"
snet_address_prefixes = ["10.0.0.0/24"]