resource "digitalocean_project" "org39" {
  name        = "org39"
  environment = var.env
}

resource "digitalocean_project_resources" "org39" {
  project = digitalocean_project.org39.id
  resources = [
    module.dns.domain.urn
  ]
}
