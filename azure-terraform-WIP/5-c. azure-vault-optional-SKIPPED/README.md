create a certificate key vault
used to store: keys, secrets and certificates

- Create the vault wih vault.tf
- Store the credentials for service_principal_secret = "" in the vault
- modify all the terraform files that contain  [client_secret] to read from the vault
- remove the service_principal_secret from terraform.tfvars
- create a auth.tf file

The auth.tf will be:

```tf
data "azurerm_key_vault_secret" "aks_auth" {
  name         = "cafanwii_sp_secret"  # The name of the secret in Key Vault
  key_vault_id = azurerm_key_vault.cafanwii_key_vault.id
}
```

This is an example of how the secret can be used: aks.tf

```tf
# aks.tf
provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"  # Path to your kubeconfig file
  }
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "my-aks-cluster"
  location            = azurerm_resource_group.cafanwii.location
  resource_group_name = azurerm_resource_group.cafanwii.name
  dns_prefix          = "myakscluster"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2s_v3"
  }

  service_principal {
    client_id     = azuread_service_principal.cafanwii.application_id
    client_secret = data.azurerm_key_vault_secret.aks_auth.value  ## Use the secret value here
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "calico"
  }

  tags = {
    environment = "development"
  }
}
```


az account set --subscription a0cf06fc-47a3-4a1c-9939-13415ad0fa33
