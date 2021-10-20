variable "gcp_credentials" {
  description = "Credenciais da GCP para o google provider"
  default = ""
}

variable "gcp_project" {
  description = "Nome do project GCP"
  default = ""
}


variable "gcp_region" {
  description = "Região GCP"
  default = "us-east4"
}

variable "gcp_zone1" {
  description = "Zona 1 GCP"
  default = "us-east4-a"
}

variable "gcp_zone2" {
  description = "Zona 2 GCP"
  default = "us-east4-b"
}

variable "machine_type" {
  description = "Tipo de máquina"
  default = "n1-standard-1"
}

variable "image" {
  description = "Imagem para construir a instância"
  default = ""
}