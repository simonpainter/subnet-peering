provider "azurerm" {

  client_id       = var.client_id
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_secret   = var.client_secret

  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }

  }
}
