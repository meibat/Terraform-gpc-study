output "ip"" {
  value = "${google_compute_instance.chapter1.network_interface.0.access_config.0.nat_ip}"
}