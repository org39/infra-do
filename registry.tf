resource "digitalocean_container_registry" "koovnasearch" {
  name                   = "koovnasearch"
  subscription_tier_slug = "starter"
}
