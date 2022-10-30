# management subent 
resource "google_compute_subnetwork" "manage-subnet" {
  name          = var.subnetName[0]
  ip_cidr_range = var.subnetCidr[0]
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
  private_ip_google_access= true
}
#restricted subnet
resource "google_compute_subnetwork" "restrict-subnet" {
  name          = var.subnetName[1]
  ip_cidr_range = var.subnetCidr[1]
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
  private_ip_google_access= true
  secondary_ip_range {
    range_name    = "k8s-pod-range"
    ip_cidr_range = var.two_secondary_ip_range[0]
  }
  secondary_ip_range {
    range_name    = "k8s-service-range"
    ip_cidr_range = var.two_secondary_ip_range[1]
  }

}