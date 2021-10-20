terraform {
  required_version = ">=0.11.1"
}

provider "google" {
  credentials = "${var.gcp_credentials}"
  project = "${var.gcp_project}"
  region = "${var.gcp_region}"
}

resource "google_compute_instance" "Instancia_01" {
  name         = "${var.instance_name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.gcp_zone1}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  network_interface {
    network = "default"
  }
}

resource "google_compute_instance" "Instancia_02" {
  name         = "${var.instance_name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.gcp_zone2}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  network_interface {
    network = "default"
  }
}