resource "cloudflare_zero_trust_tunnel_cloudflared_config" "mini" {
  account_id = var.account_id
  tunnel_id  = "3a6a688c-0645-4272-85c9-0ad2f1640f87"

  config {
    ingress_rule {
      hostname = "jellyfin.haberr.cc"
      service  = "http://localhost:8096"
    }

    ingress_rule {
      hostname = "photos.haberr.cc"
      service  = "http://localhost:2283"
    }

    ingress_rule {
      hostname = "docs.haberr.cc"
      service  = "http://localhost:7000"
    }

    ingress_rule {
      hostname = "n8n.haberr.cc"
      service  = "http://localhost:5678"
    }

    ingress_rule {
      hostname = "mini.haberr.cc"
      service  = "ssh://localhost:22"
    }

    // FIX: DNS record is not updated automatically when modifying hostname via API
    ingress_rule {
      hostname = cloudflare_zero_trust_access_application.cockpit-mini.domain
      service  = "http://localhost:9090"
    }

    ingress_rule {
      service = "http_status:404"
    }

  }
}
