resource "google_service_account" "gke_sva" {
  account_id   = "gke-sva"
  display_name = "GKE service account"
}

resource "google_service_account" "api_sva" {
  account_id   = "api-sva"
  display_name = "api service account"
}

resource "google_service_account" "jenkins_follower_sva" {
  account_id   = "jenkins-follower-sva"
  display_name = "jenkins follower service account"
}