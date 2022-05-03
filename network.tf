
#VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
  routing_mode            = "REGIONAL"
}

# Subnet 1
resource "google_compute_subnetwork" "subnet1" {
  name          = "${var.project_id}-subnet1"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.20.0.0/24"
  private_ip_google_access  = "true"
  network_subnets_flow_logs = "true"
}

# Subnet 2
resource "google_compute_subnetwork" "subnet2" {
  name          = "${var.project_id}-subnet2"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.20.1.0/24"
  private_ip_google_access  = "true"
}