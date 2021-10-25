//cria a VM com o Google Compute Engine
resource "google_compute_instance" "chapter1" {
  name         = "${var.instance_name1}"
  machine_type = "${var.machine_type1}"
  zone         = "${var.gcp_zone1}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }
  //instala o servidor apache
  metadata_startup_script = "sudo apt-get update; sudo apt-get install apache2 -y; echo Testando instância 1 > /var/www/html/index.html"

  //habilita a rede para a VM bem como um IP público
  network_interface {
    network = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.subnet-1.name
    access_config {
      
    }
  }
}

//cria o Firewall para a VM
resource "google_compute_firewall" "cp1_firewall" {
  name = "${var.fw_name1}"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports = "${var.ports_cp1}"
  }
}