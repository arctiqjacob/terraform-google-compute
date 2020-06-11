resource "google_compute_instance" "compute" {
  count        = var.instance_count
  name         = "${var.instance_name}-${count.index + 1}"
  machine_type = var.machine_type
  zone         = var.zone

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.instance_os
    }
  }

  network_interface {
    network = var.network
  }

  metadata = var.metadata

  service_account {
    scopes = var.service_account_scopes
  }
}