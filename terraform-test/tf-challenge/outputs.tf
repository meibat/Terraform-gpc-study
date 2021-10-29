output "name1" {
  value = google_compute_instance.chapter1.name
}

output "firewall_ports1" {
  value = google_compute_firewall.cp1_firewall.allow
}

output "name2" {
  value = google_compute_instance.chapter2.name
}

output "firewall_ports2" {
  value = google_compute_firewall.cp2_firewall.allow
}

output "network" {
  value = google_compute_network.vpc.name
}

output "subnet-1" {
  value = google_compute_subnetwork.subnet-1.name
}

output "subnet-2" {
  value = google_compute_subnetwork.subnet-2.name
}

output "instance1_ip" {
  value ="${google_compute_instance.chapter1.network_interface[0].access_config[0].nat_ip}"
}

output "instance2_ip" {
  value ="${google_compute_instance.chapter2.network_interface[0].access_config[0].nat_ip}"
}