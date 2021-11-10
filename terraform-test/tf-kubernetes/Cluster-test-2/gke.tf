//Cluster GKE
resource "google_container_cluster" "cluster-test-2" {
  name = sensitive("${var.project_id}-test-2")
  location = var.region

  remove_default_node_pool = true
  initial_node_count = 1

  network = google_compute_network.vpc-2.name
  subnetwork = google_compute_subnetwork.subnet-2.name

}

//Node Pool gerenciuado separadamente
resource "google_container_node_pool" "nodes_primarios" {
  name = "${google_container_cluster.cluster-test-2.name}-node-pool"
  location = var.region
  cluster = google_container_cluster.cluster-test-2.name
  node_count = var.gke_num_nodes

  node_config {

    oauth_scopes = [
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = sensitive(var.project_id)
    }

    machine_type = "e2-standard-2"
    tags = [ "gke-node", sensitive("${var.project_id}-test-2") ]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}

