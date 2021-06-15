provider "google" {
  project = var.project_id
  region  = var.region
}

// Remote bucket 
terraform {
  backend "gcs" {
    bucket = "gh-actions-tf-state"
    prefix = "terraform/state"
  }
}