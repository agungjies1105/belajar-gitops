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
variable "project_id" {
  description = "project_id"
}

variable "region" {
  description = "region"
}

variable "zone" {
  description = "zone"
}