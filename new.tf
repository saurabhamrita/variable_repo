terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
features {
  
}
subscription_id = "72a91b09-4e20-47bf-9db5-fe67dec70106"
}

variable "nims" {
default = ["sp1","sp2","sp3","sp4"]
}

resource "azurerm_resource_group" "saurabh" {
count = length(var.nims)
name = var.nims[count.index]
location = "East US"
}