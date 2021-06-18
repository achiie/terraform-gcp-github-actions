# module "iam_bindings" {
#   source  = "terraform-google-modules/iam/google//modules/projects_iam"
#   version = "~> 5.0"

#   projects = [var.project_id]

#   bindings = {
#     "roles/storage.admin" = [
#       "serviceAccount:${google_service_account.gke_sva.email}",

#     ]

#     "roles/logging.logWriter" = [
#       "serviceAccount:${google_service_account.gke_sva.email}",
#       "serviceAccount:${google_service_account.api_sva.email}",
#       "serviceAccount:${google_service_account.jenkins_follower_sva.email}",
#     ]

#     "roles/monitoring.metricWriter" = [
#       "serviceAccount:${google_service_account.gke_sva.email}",
#       "serviceAccount:${google_service_account.api_sva.email}",
#       "serviceAccount:${google_service_account.jenkins_follower_sva.email}"
#     ]

#     "roles/cloudsql.client" = [
#       "serviceAccount:${google_service_account.gke_sva.email}",
#     ]

#     "roles/editor" = [
#       "serviceAccount:${google_service_account.jenkins_follower_sva.email}",
#       "serviceAccount:99894495662-compute@developer.gserviceaccount.com",
#       "serviceAccount:99894495662@cloudservices.gserviceaccount.com",
#     ]
#   }
# }