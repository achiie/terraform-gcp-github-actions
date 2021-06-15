provider "google" {
  project = var.project_id
  region  = var.region
}

// Remote bucket 
terraform {
  backend "gcs" {
    bucket = "myvik-tf-state-prod"
    prefix = "terraform/state"
  }
}