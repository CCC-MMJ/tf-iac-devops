variable "project_id" {
  type    = string
  default = "devops-iac-477820"
}
variable "region" {
  type    = string
  default = "us-central1"
}

provider "google" {
  project = var.project_id
  region  = var.region
}
