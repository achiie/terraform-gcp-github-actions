resource "google_sql_database_instance" "tt-prod-db-mysql-01" {

  name             = "tt-prod-db-mysql-01"
  database_version = "MYSQL_5_6"
  region           = var.region

  settings {
    tier = "db-n1-standard-2"

    disk_size         = 20
    disk_type         = "PD_SSD"
    availability_type = "REGIONAL"

    backup_configuration {
      enabled            = true
      start_time         = "01:00"
      binary_log_enabled = true
    }

    maintenance_window {
      day  = 6
      hour = 02
    }

    ip_configuration {
      ipv4_enabled    = false
      private_network = var.network

    }
  }
}