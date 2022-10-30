
data "google_project" "project" {}
resource "google_project_iam_binding" "kubernate-service" {
  project = data.google_project.project.project_id
  role ="roles/storage.admin"

  members = [
    "serviceAccount:${google_service_account.k8s-staging.email}",
  ]
}