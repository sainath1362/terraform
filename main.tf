terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.77.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "7e2bdd36-24fd-4547-9ce9-ae9bdc79a9e3"
  client_id       = "45411904-3c6a-44f1-977f-a7e07577e021"
  client_secret   = "FJX8Q~rBWK~e53SCPIxgu7sl.9yP2nYzU1zKLcpq"
  tenant_id       = "1dc305d3-6e0e-4f40-8501-a7cffc47c236"
  features {}
}

locals {
  resource_group = "app-grp"
  location       = "North Europe"
}


resource "azurerm_resource_group" "app_grp" {
  name     = local.resource_group
  location = local.location
}
