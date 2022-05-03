module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 10.1"

  name                 = "my-project-on"
  random_project_id    = "my-project-ontf"
  billing_account      = "01E469-E2E09D-70105F"