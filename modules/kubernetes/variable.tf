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
variable "cluster" {
  type = object({
    name    = string
    version = string
    vpc_id  = string
    tags    = list(string)
    default_node_pool = object({
      name  = string
      size  = string
      count = string
    })
  })

  description = <<EOT
The kubernetes cluster configuration to deploy to infrastructure
  - name: The name of the cluster
  - version: The version of the cluster
  - vpc_id: The UUID of the VPC
  - tags: The tags to apply to the cluster
  - default_node_pool: The default node pool configuration
    - name: The name of the node pool
    - size: The slug identifier for the type of Droplet (node type)
    - count: The number of nodes to create
EOT
}
