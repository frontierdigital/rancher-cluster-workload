data "azurerm_key_vault" "main" {
  name                = split("/", var.rancher_server_key_vault_id)[8]
  resource_group_name = split("/", var.rancher_server_key_vault_id)[4]
}

data "azurerm_key_vault_secret" "rancher_admin_token" {
  key_vault_id = data.azurerm_key_vault.main.id
  name         = "rancher-admin-token"
}

data "azurerm_key_vault_secret" "rancher_server_api_url" {
  key_vault_id = data.azurerm_key_vault.main.id
  name         = "rancher-server-api-url"
}

data "rancher2_cloud_credential" "main" {
  name = "Rancher Server cluster provisioner"
}
