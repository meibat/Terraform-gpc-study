resource "google_compute_network" "vpc-1" {
  name = "${var.project}-vpc1"
  auto_create_subnetworks = "false"
}

//Subnet 1
resource "google_compute_subnetwork" "subnet-1" {
  name = "${var.project}-subnet1"
  region = var.location
  network = google_compute_network.vpc-1.name
  ip_cidr_range = "10.8.0.0/24"
}