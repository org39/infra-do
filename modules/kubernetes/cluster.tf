resource "digitalocean_kubernetes_cluster" "this" {
  name     = var.cluster.name
  region   = var.region
  version  = var.cluster.version
  vpc_uuid = var.cluster.vpc_id

  auto_upgrade  = false
  surge_upgrade = false
  ha            = false
  tags          = var.cluster.tags

  node_pool {
    name       = var.cluster.default_node_pool.name
    size       = var.cluster.default_node_pool.size
    node_count = var.cluster.default_node_pool.count
    auto_scale = false
    # assign tags to all nodes in the default node pool as same as the cluster
    tags = var.cluster.tags
  }
}
