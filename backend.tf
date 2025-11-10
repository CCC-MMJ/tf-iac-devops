terraform {
  backend "gcs" {
    bucket = "devops-iac-477820-tfstate"
    prefix = "state/core"
  }
}
