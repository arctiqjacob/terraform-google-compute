variable "project" {
  description = "gcp project to provision into"
}

variable "instance_name" {
  description = "controls the name to give to the instance(s)"
}

variable "instance_count" {
  description = "number of instance(s) to provision"
  default     = 0
}

variable "machine_type" {
  description = "controls the machine type to provision"
  default     = "n1-standard-1"
}

variable "region" {
  description = "defines the region to provision the instance(s) into"
  default     = "us-central1"
}

variable "zone" {
  description = "defines the zone to provision the instance(s) into"
  default     = "us-central1-a"
}

variable "tags" {
  description = "defines network tags to apply firewalls rules to"
  default     = []
}

variable "instance_os" {
  description = "controls the os to install on the instance(s)"
  default     = "debian-cloud/debian-9"
}

variable "network" {
  description = "defines which network the instance(s) will live on"
  default     = "default"
}

variable "metadata" {
  description = "defines any custom metadata for the instance(s)"
  default     = {}
}

variable "service_account_scopes" {
  description = "control the permissions the SA on the insstance(s) have"
  default     = []
}

variable "vault_address" {
  description = "defines the vault server to connect to"
}

variable "vault_gcp_path" {
  description = "defines the vault path to GCP secrets engine"
}