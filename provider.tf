provider "vault" {
  address = var.vault_address
}

provider "google" {
  credentials = base64decode(data.vault_generic_secret.gcp_auth.data["private_key_data"])
  project     = var.project
  region      = var.region
  zone        = var.zone
}