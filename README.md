# Introduction
Introduction to the Terraform Module for creating an Azure Resource Group.

## Purpose of module
This module exists to simplify the creation of Azure Resource Groups. The module will currently allow for one Resource Group to be created per module call. 

### Required Variables
The following variables are required for the module to function:

| Variable name       | Type          | Defaults | Example                              |
| ------------------- | ------------- | -------- | ------------------------------------ |
| resource_group_name | `string`      | n/a      | rg-module-resource-group-swc         |
| location            | `string`      | n/a      | swedencentral                        |
| subscription_id     | `string`      | n/a      | 11111111-2222-3333-4444-555555555555 |

### Optional Variables
The following variables are optional and can be used if necessary:

| Variable name       | Type          | Defaults | Example                      |
| ------------------- | ------------- | -------- | ---------------------------- |
| common_tags         | `map(string)` | {}       | environment = "Dev"          |
| create              | `string`      | null     | 20m                          |
| read                | `string`      | null     | 15m                          |
| update              | `string`      | null     | 10m                          |
| delete              | `string`      | null     | 5m                           |

### Outputs
The module provides the following outputs to make it easier to consume the resulting resource:

| Output name                 | Description                                         |
| --------------------------- | --------------------------------------------------- |
| resource_group_name         | Name of the created Resource Group                  |
| resource_group_location     | Location of the created Resource Group              |
| resource_group_id           | Resource ID of the created Resource Group           |
| subscription_id             | Subscription ID used by the `azurerm` provider      |

## How to use module
The following is a code example of how to call the module.
```javascript
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
```

## To-do for module
The following tasks are currently acknowledged and will be implemented in time:
- Add a Lock-function to add Resource Lock
- Add option to use Telemetry
- Allow for multiple Resource Groups to be created on module call
- Allow for RBAC permissions to be applied directly on the Resource Group(s) on module call
