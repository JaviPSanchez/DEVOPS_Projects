resource "google_project" "weather" {
  name       = var.project_name
  project_id = var.project_name
  folder_id  = "folders/${var.folder_id}"
}