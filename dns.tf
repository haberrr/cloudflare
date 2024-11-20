resource "cloudflare_record" "outline-fi" {
  zone_id = var.zone_id
  name    = "outline-fi"
  type    = "A"
  content = "135.181.37.95"
  ttl     = 1
  proxied = false
  comment = "Outline server for trusted users only"
}

resource "cloudflare_record" "outline-eu" {
  zone_id = var.zone_id
  name    = "outline-eu"
  type    = "A"
  content = "193.84.2.170"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "outline-ru" {
  zone_id = var.zone_id
  name    = "outline-ru"
  type    = "A"
  content = "91.218.113.57"
  ttl     = 1
  proxied = false
}
