resource "google_compute_instance" "jenkins_follower" {
  name                      = "jenkins-follower"
  machine_type              = "g1-small"
  zone                      = var.zones[0]
  allow_stopping_for_update = false

  tags = ["iap-ssh", "jenkins-ssh"]

  boot_disk {
    auto_delete = "false"
    source      = google_compute_disk.jenkins_follower_boot.self_link
  }


  network_interface {
    subnetwork         = var.subnetwork
    subnetwork_project = var.host_project
  }

  metadata = {
    startup-script-url          = "https://storage.googleapis.com/rs-gce-instances-scripts-master/linux/startup_scripts/rackspace_gcp_sysprep_v1.sh"
    install-stackdriver-agent   = "true"
    install-stackdriver-logging = "true"
    install-default-packages    = "true"
  }

  service_account {
    scopes = ["cloud-platform"]
    email  = google_service_account.terraform-sva.email
  }
}