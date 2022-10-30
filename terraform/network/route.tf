resource "google_compute_router" "router" {
  name    = "manage"
  region  = google_compute_subnetwork.manage-subnet.region
  network = google_compute_network.vpc_network.id

  bgp {
    asn = 64514
  }
}
/* resource "google_compute_router" "restricted_router" {
  name    = "restricted"
  region  = google_compute_subnetwork.restrict-subnet.region
  network = google_compute_network.vpc_network.id

  bgp {
    asn = 64514
  }
} */
