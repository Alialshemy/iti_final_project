output "vpc" {
    value = google_compute_network.vpc_network
  
}
output "manage_subnet" {
  value = google_compute_subnetwork.manage-subnet
}
output "restricted_subnet" {
  value = google_compute_subnetwork.restrict-subnet
}