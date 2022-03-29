resource "digitalocean_record" "this" {
  domain = digitalocean_domain.this.id

  for_each = var.records

  name  = each.key
  type  = each.value.type
  value = each.value.value
}
