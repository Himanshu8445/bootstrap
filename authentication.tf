terraform {
  #backend "local" {
  #path = "./bootstrap.tfstate"
  #}
  backend "azurerm" {}

  required_providers {
    azurerm = {
      version = ">=2.91.0"
    }
  }
}

#### Configure the Azure Provider
provider "azurerm" {
  environment     = "public"
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  features {}
}