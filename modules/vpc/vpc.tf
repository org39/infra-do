resource "digitalocean_vpc" "this" {
  region   = var.region
  name     = "${var.region}-${var.vpc.name}"
  ip_range = var.vpc.ip_range
}
