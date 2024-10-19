# Top-level folder under an organization.
resource "google_folder" "weather" {
  display_name = "Weather-Folder"
  parent = "organizations/774249342517"
}


# Folder nested under another folder.
# resource "google_folder" "weather_subfolder" {
#   display_name = "Weather-Subfolder"
#   parent       = "folders/916941783693"
# }