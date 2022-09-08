variable "key_path" {
  default = "terraform-gcp-credencials.json"
}

variable "gke_num_nodes" {
  default = 1
}

variable "project_id" {
  default = "terraform-gcp-000000"
}

variable "region" {
  default = "us-east4"
}

variable "zone" {
  default = "us-east4-a"
}

variable "image" {
  default = "ubuntu_containerd"
}
