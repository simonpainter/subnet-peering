provider "azurerm" {

  client_id       = var.client_id
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_secret   = var.client_secret


  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      skip_shutdown_and_force_delete = true
    }
  }
}
