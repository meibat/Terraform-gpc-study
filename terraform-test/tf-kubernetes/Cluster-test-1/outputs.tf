output "endpoint" {
  value = google_container_cluster.cluster-test-1.endpoint
}

output "master_version" {
  value = google_container_cluster.cluster-test-1.master_version
}
