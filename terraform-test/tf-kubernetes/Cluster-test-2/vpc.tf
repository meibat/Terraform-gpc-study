provider "google" {
    credentials = "${file("${var.key_path}")}"
    project = var.project_id
    region = var.region
}

//VPC
resource "google_compute_network" "vpc-2" {
  name = sensitive("${var.project_id}-vpc2")
  auto_create_subnetworks = "false"
}

//Subnet
resource "google_compute_subnetwork" "subnet-2" {
  name = sensitive("${var.project_id}-subnet2")
  region = var.region
  network = google_compute_network.vpc-2.name
  ip_cidr_range = "10.10.0.0/24"
}