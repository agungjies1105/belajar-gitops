terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.20.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
module "gcloud" {
create_cmd_entrypoint  = "gcloud"
create_cmd_body        = "version"
}