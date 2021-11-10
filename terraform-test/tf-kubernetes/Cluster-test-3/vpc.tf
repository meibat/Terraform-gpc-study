provider "google" {
    credentials = "${file("${var.key_path}")}"
    project = var.project_id
    region = var.region
}

//VPC
resource "google_compute_network" "vpc-3" {
  name = sensitive("${var.project_id}-vpc3")
  auto_create_subnetworks = "false"
}

//Subnet
resource "google_compute_subnetwork" "subnet-3" {
  name = sensitive("${var.project_id}-subnet3")
  region = var.region
  network = google_compute_network.vpc-3.name
  ip_cidr_range = "10.10.0.0/24"
}