
resource "google_compute_instance" "bastion" {
  name         = "bastion"
  machine_type = "e2-medium"
  zone         = var.zone
  tags         = ["bastion"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  # 
 metadata_startup_script = file("${path.module}/startup.sh")

  network_interface {
    subnetwork = var.manage_subnet

    
  }
   service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.bastion_service.email
    scopes = ["cloud-platform"]
  }
  depends_on = [google_service_account.bastion_service]
}
