terraform {
  backend "azurerm" {
    resource_group_name  = "joel-chan"
    storage_account_name = "joelstorage24"
    container_name       = "state"
    key                  = "terraform.tfstate"
  }
  
}
