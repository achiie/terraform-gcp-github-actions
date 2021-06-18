variable "project_id" {
  type        = string
  description = "The Google Cloud Project Id"
}

variable "region" {
  type    = string
  default = "europe-west2"
}

# variable "zones" {
#   description = "GCP zone identifier"
#   type        = list
# }

# variable "host_project" {
#   description = "shared vpc name"
#   type        = string
# }

# variable "watchman_token" {
#   type = string
# }

variable "network" {
  description = "Network to deploy to. Only one of network or subnetwork should be specified."
  default     = "skyde-test-net01"
}

# variable "subnetwork" {
#   description = "Subnet to deploy to. Only one of network or subnetwork should be specified."
#   default     = "skyde-test-sn-nodes"
# }

# variable "subnet_2" {
#   description = "Subnet to deploy to. Only one of network or subnetwork should be specified."
#   default     = ""
# }

# variable "can_ip_forward" {
#   description = "Enable IP forwarding, for NAT instances for example"
#   default     = "false"
# }

# variable "target_pools" {
#   description = "The target load balancing pools to assign this group to."
#   type        = list(string)
#   default     = []
# }