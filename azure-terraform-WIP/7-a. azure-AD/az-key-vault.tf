provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_key_vault" "cafanwii_key_vault" {
  name                        = "cafanwii-keys-vaulted"
  location                    = "East US"
  resource_group_name         = "cafanwii"  # Use the desired resource group name
  tenant_id                   = var.tenant_id  
  sku_name                    = "standard"
  enabled_for_disk_encryption = true
  enabled_for_template_deployment = true
}