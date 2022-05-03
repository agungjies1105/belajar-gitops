terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.20.0"
    }
  }
  module "gcloud" {
  source  = "terraform-google-modules/gcloud/google"
  version = "3.1.1"
                  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}