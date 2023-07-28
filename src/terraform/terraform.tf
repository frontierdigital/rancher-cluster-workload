terraform {
  required_version = "~> 1.5"

  backend "azurerm" {
    container_name = "terraform"
  }

  required_providers {
    rancher2 = {
      source  = "rancher/rancher2"
      version = "~> 3.1"
    }
  }
}
