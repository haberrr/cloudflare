resource "cloudflare_zero_trust_access_policy" "network" {
  account_id = var.account_id
  name       = "Network"
  decision   = "bypass"

  include {
    device_posture = [
      "e12a3ae9-9cc0-4569-aded-68c872f90bb2" # Gateway
    ]
  }
}

resource "cloudflare_zero_trust_access_policy" "family" {
  account_id = var.account_id
  name       = "Family"
  decision   = "allow"

  include {
    group = [
      cloudflare_zero_trust_access_group.family.id
    ]
  }
}

resource "cloudflare_zero_trust_access_policy" "media-external" {
  account_id = var.account_id
  name       = "Media / External"
  decision   = "allow"

  include {
    group = [
      cloudflare_zero_trust_access_group.media-external.id
    ]
  }
}
