variable "key_path" {
  description = ""
  default = "terraform-gcp-credencials.json"
}

variable "gke_num_nodes" {
  description = ""
  default = 1
}

variable "project_id" {
  description = ""
  default = "terraform-gcp-329700"
}

variable "region" {
  description = ""
  default = "us-east4"
}

variable "zona" {
  default = "us-east4-a"
}

variable "machine_type" {
  description = "value"
  default = "n1-standard-1"
}

variable "instance_name" {
  description = ""
  default = "cluster3-instance"
}

variable "image" {
  description = ""
  default = "ubuntu-1804-bionic-v20210928"
}

variable "fw_name" {
  description = "value"
  default = "cluster3-firewall"
}

variable "ports" {
  description = "value"
  default = ["80", "443"]
}