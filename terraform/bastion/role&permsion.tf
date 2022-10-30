
data "google_project" "project" {}
resource "google_project_iam_binding" "mservice_infra_binding" {
  project = data.google_project.project.project_id
  role ="roles/container.admin"

  members = [
    "serviceAccount:${google_service_account.bastion_service.email}",
  ]
}