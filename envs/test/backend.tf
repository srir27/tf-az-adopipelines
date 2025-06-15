terraform {
    backend "azurerm" {
    resource_group_name  = "test-tfremote"
    storage_account_name = "tfteststorage000"
    container_name       = "tftestcontainer000"
    key                  = "terraform.tfstate"
    use_azuread_auth = false
    use_msi = true
  }
}