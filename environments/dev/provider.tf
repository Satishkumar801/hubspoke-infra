terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
  }
    backend "azurerm" {
    #   resource_group_name  = "agent_rg"
    #   storage_account_name = "satishstorage1122"
    #   container_name       = "containersatish"
    #   key                  = "infra-hub-spoke.tfstate"
    }
}
#provider subscription id
provider "azurerm" {
  subscription_id = "083e487f-e2f3-4cbf-8c5a-281eaf24cc5b"
  features {}
  # Configuration options
}