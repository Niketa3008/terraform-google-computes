resource "google_compute_instance" "default" {
  project                           = var.project_id
  zone                              = var.zone
  name                              = var.name
  tags                              = var.tags
  labels                            = var.labels
  metadata                          = var.metadata
  machine_type                      = var.machine_type
  deletion_protection               = var.deletion_protection
  
  boot_disk {
    initialize_params {
      image                         = var.image
      size                          = var.size
      labels                        = var.labels
    }
  }

  dynamic "attached_disk" {
    for_each                        = var.attached_disk
    content {
      source                        = attached_disk.value.source
    }
  }

 network_interface {
      subnetwork                    = var.network_interface.subnetwork
    }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email                           = var.service_account_email
    scopes                          = var.service_account_scopes
  }
}