variable "name" {
  default = "cluster-test-1"
}

variable "project" {
  default = "terraform-gcp-000000"
}

variable "key_path" {
  default = "terraform-gcp-credencials.json"
}

variable "location" {
  default = "us-east1"
}

variable "initial_node_count" {
  default = 2
}

variable "machine_type" {
  default = "n1-standard-1"
}
