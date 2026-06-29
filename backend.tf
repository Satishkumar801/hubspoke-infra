# terraform {
#  backend "azurerm" {
#    resource_group_name  = "tf-rg"
#    storage_account_name = "tfstateprod"
#    container_name       = "tfstate"
#    key                  = "infra.tfstate"
#  }
# }