provider "azurerm" {
  features {}
}

provider "rancher2" {
  api_url   = data.azurerm_key_vault_secret.rancher_server_api_url.value
  token_key = data.azurerm_key_vault_secret.rancher_admin_token.value
  insecure  = true
}
