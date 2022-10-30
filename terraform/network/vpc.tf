resource "google_project_service" "compute" {
  service = "compute.googleapis.com"
}

resource "google_project_service" "container" {
  service = "container.googleapis.com"
}

resource "google_compute_network" "vpc_network" {
  project                 = var.projectName
  name                    = var.vpcName
  auto_create_subnetworks = false
  # this vpc can not access internet
  delete_default_routes_on_create =false
  mtu                     = 1460
   depends_on = [
    google_project_service.compute,
    google_project_service.container
  ]
}