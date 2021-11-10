output "region" {
  value = var.region
}

output "project_id" {
  value = var.project_id
  sensitive = true
}

output "kubernetes_cluster_name" {
  value = google_container_cluster.cluster-test-3.name
  sensitive = true
}

output "kubernetes_cluster_host" {
  value = google_container_cluster.cluster-test-3.endpoint
  sensitive = true
}

