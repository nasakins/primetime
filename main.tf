provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "rg1" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.common_tags
}

resource "azurerm_storage_account" "stg1" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = local.common_tags

  lifecycle {
    ignore_changes = [tags]
  }
}


