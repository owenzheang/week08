terraform {
  backend "azurerm" {
    resource_group_name  = "koalatech-tfstate-rg"
    storage_account_name = "owentf10254808f25"
    container_name       = "tfstate"
    key                  = "week08-task102.tfstate"
  }
}