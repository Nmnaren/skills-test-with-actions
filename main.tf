terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.10.0"

    }

  }
}

provider "azurerm" {
    features {
    }
  
}


resource "azurerm_resource_group" "rg1" {
    name = "411-bb44aec2-deploying-your-first-azure-virtual-ma"
    location = "East US"
  
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  address_space       = ["10.0.0.0/16"]
}