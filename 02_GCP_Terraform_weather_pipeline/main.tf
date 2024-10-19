module "folders" {
    source = "./folders"
}

module "projects" {
    source = "./projects"
    project_name = "weather-project"
}