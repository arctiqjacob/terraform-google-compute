data "vault_generic_secret" "gcp_auth" {
  path = var.vault_gcp_path
}