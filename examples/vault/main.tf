/**
 * Hashicorp Vault.
 * https://www.vaultproject.io/
 */
module "container" {
  source = "../.."

  name    = "vault"
  image   = "vault"

  env = [
    "VAULT_DEV_ROOT_TOKEN_ID=${var.root_token}",
    "VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:${var.listen_port}"
  ]

  capabilities = ["IPC_LOCK"]
  
  ports = [
    ["localhost", var.listen_port, var.listen_port]
  ]
}
