terraform {
  backend "gcs" {
    bucket = "blizzard-tf-state"
    prefix = "terraform/state"
  }
}