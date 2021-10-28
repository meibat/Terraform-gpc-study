provider "google" {
  credentials = sensitive("${file("${var.key_path}")}")
  project = sensitive("${var.project}")
  region = "${var.location}"
}


resource "google_container_cluster" "test" {
  name        = var.name
  project     = var.project
  description = "Test GKE Cluster"
  location    = var.location

  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count

  network = "${google_compute_network.vpc-1.name}"
  subnetwork = "${google_compute_subnetwork.subnet-1.name}"
}

resource "google_container_node_pool" "node" {
  name       = "${var.name}-node-pool"
  project    = var.project
  location   = var.location
  cluster    = google_container_cluster.test.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = var.machine_type

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}