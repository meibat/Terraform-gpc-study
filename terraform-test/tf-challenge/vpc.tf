//VPC
resource "google_compute_network" "vpc" {
  name = "${var.gcp_project_id}-vpc"
  auto_create_subnetworks = "false"
}

//Subnet 1
resource "google_compute_subnetwork" "subnet-1" {
  name = "${var.gcp_project_id}-subnet1"
  region = var.gcp_region
  network = google_compute_network.vpc.name
  ip_cidr_range = "10.8.0.0/24"
}

//Subnet 2
resource "google_compute_subnetwork" "subnet-2" {
  name = "${var.gcp_project_id}-subnet2"
  region = var.gcp_region
  network = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}