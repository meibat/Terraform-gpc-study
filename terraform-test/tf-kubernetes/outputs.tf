output "region" {
  description = ""
  value = var.region
}

output "project_id" {
  description = ""
  value = var.project_id
  sensitive = true
}

output "kubernetes_cluster_name" {
  description = ""
  value = google_container_cluster.test_cluster.name
  sensitive = true
}

output "kubernetes_cluster_host" {
  description = ""
  value = google_container_cluster.test_cluster.endpoint
  sensitive = true
}