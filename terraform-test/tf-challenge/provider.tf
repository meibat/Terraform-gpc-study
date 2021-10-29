terraform {
  required_version = ">=0.11.1"
}

//configura o projeto GCP
provider "google" {
  credentials = sensitive("${file("${var.key_path}")}") 
  project = sensitive("${var.gcp_project_id}")
  region = "${var.gcp_region}"
}