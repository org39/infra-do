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
# domain variables
############################################################
variable "domain" {
  type = object({
    name = string
  })

  description = <<EOT
The domain to manageed by this module.
  - name: The domain name
EOT
}

############################################################
# dns recond variables
############################################################
variable "record" {
  type = list(
    object({
      type  = string
      name  = string
      value = string
    })
  )

  description = <<EOT
The list of dns record to manageed by this module.
  - type: The dns record type
  - name: The dns record name
  - value: The dns record value
EOT

  default = []
}
