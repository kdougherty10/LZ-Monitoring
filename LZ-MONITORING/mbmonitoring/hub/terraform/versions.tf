/* 
 terraform {

required_version = ">= 0.12"

required_providers {
    azurerm = {
      version = ">= 1.35.0"   
    }
  }
  backend "azurerm" {
    resource_group_name   = "PRSYSTF-RG"
    storage_account_name = "prsystfstor"
    container_name       = "prsystfstate"
    key                  = "hub.terraform.tfstate"
   }
 }
 */

 provider "azurerm" {
 features{}

  subscription_id =  local.settings.subscription_id
 }

 
