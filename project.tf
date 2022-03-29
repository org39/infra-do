resource "digitalocean_project" "org39" {
  name        = "org39"
  environment = var.env
  resources = [
    module.dns.domain.urn
  ]
}
