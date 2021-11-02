resource "google_compute_instance_group" "Cluster3_group" {
  name      = "cluster-instance-group"
  zone      = "${var.zona}"
  instances = [google_compute_instance.Instance-cluster3.id]

  lifecycle {
    create_before_destroy = true
  }
}


//cria a VM com o Google Compute Engine
resource "google_compute_instance" "Instance-cluster3" {
  name         = "${var.instance_name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zona}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }
  //instala o servidor apache
  metadata_startup_script = "sudo apt-get update; sudo apt-get install apache2 -y; echo Testando Cluster 3 > /var/www/html/index.html"

  //habilita a rede para a VM bem como um IP público
  network_interface {
    network = google_compute_network.vpc-3.name
    subnetwork = google_compute_subnetwork.subnet-3.name
    access_config {
      
    }
  }
}

//cria o Firewall para a VM
resource "google_compute_firewall" "Cluster3_firewall" {
  name = "${var.fw_name}"
  network = google_compute_network.vpc-3.name
  allow {
    protocol = "tcp"
    ports = "${var.ports}"
  }
}