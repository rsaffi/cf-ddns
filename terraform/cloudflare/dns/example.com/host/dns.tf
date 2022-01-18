data "cloudflare_zones" "domain" {
  filter {
    name        = "example.com"
    lookup_type = "exact"
  }
}

resource "cloudflare_record" "host-domain" {
  zone_id = lookup(data.cloudflare_zones.domain.zones[0], "id")
  name   = "host"
  type   = "A"
  proxied = false
  ttl    = 60
  value  = var.ip
}
