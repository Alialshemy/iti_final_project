resource "google_compute_firewall" "bastion" {
  name = "allow-ssh"
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = var.vpc_id
  priority      = 1000
  source_ranges = ["35.235.240.0/20",]
  target_tags   = ["bastion"]
}