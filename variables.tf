############################################################
# common variables
############################################################
variable "env" {
  type        = string
  description = "The environment to deploy to infrastructure"
  default     = "production"
}

variable "region" {
  type        = string
  description = "The region to deploy to infrastructure"
  default     = "sgp1"
}

