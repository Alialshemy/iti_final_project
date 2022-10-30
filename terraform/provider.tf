#gcloud auth application-default login
provider "google" {
  project = var.project
  region  = var.region
}
