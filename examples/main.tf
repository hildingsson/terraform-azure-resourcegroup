terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "resource_group" {
  source = "../"

  resource_group_name = "rg-module-resource-group-swc"
  location            = "swedencentral"

  common_tags = {
    deployment = "Teraform"
  }

  timeouts = {
    create = "20m"
  }
}
