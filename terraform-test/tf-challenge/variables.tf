variable "gcp_project_id" {
  description = "ID do project GCP"
  default = "terraform-gcp-329700"
}

variable "gcp_region" {
  description = "Região GCP"
  default = "us-east4"
}

variable "key_path" {
  description = "value"
  default = "terraform-gcp-credencials.json"
}

variable "image" {
  description = "Imagem para construir a instância"
  default = "ubuntu-1804-bionic-v20210928"
}

//variaveis intancia 1

variable "gcp_zone1" {
  description = "Zona 1 GCP"
  default = "us-east4-a"
}

variable "machine_type1" {
  description = "Tipo de máquina"
  default = "n1-standard-1"
}

variable "instance_name1" {
  description = "Nome da instância"
  default = "chapter1-instance"
}

variable "fw_name1" {
  description = "nome do firewall"
  default = "chapter1-firewall"
}

variable "ports" {
  description = "portas"
  default = ["80", "443"]
}

//variaveis intancia 2

variable "gcp_zone2" {
  description = "Zona 2 GCP"
  default = "us-east4-b"
}

variable "machine_type2" {
  description = "Tipo de máquina"
  default = "e2-standard-2"
}

variable "instance_name2" {
  description = "Nome da instância"
  default = "chapter2-instance"
}

variable "fw_name2" {
  description = "nome do firewall"
  default = "chapter2-firewall"
}

variable "ports_cp2" {
  description = "portas"
  default = ["80", "220"]
}