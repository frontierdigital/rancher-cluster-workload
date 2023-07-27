clusters = [
  {
    name               = "foo"
    kubernetes_version = "1.25.5"
    node_count         = 3
    vm_size            = "Standard_D2s_v3"
  }
]
rancher_server_key_vault_id = "/subscriptions/7fc96c6f-e857-497a-a993-847b18ff22a2/resourceGroups/demo-dev-uks-rancherserver-rg/providers/Microsoft.KeyVault/vaults/demo-dev-uks-ranserv-kv"
