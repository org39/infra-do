############################################################
# common variables
############################################################
variable "env" {
  type        = string
  description = "The environment to deploy to infrastructure"
}

variable "region" {
  type        = string
  description = "The region to deploy to infrastructure"
}

############################################################
# vpc variables
############################################################
variable "vpc" {
  type = object({
    name     = string
    ip_range = string
  })

  description = <<EOT
The VPC configuration to deploy to infrastructure
  - name: The name of the VPC
  - ip_range: The IP range of the VPC
EOT
}
