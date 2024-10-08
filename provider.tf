terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "255cd4fe-3191-4011-bd2b-1569f4feba39"
  # Configuration options

  features {}
}

