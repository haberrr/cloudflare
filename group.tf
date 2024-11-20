resource "cloudflare_zero_trust_access_group" "admin" {
  account_id = var.account_id
  name       = "Admin"
  include {
    email = [
      "dron.pavlov@gmail.com",
      "pavlov.andrey@pm.me",
      "haberr@pm.me",
    ]
  }
}

resource "cloudflare_zero_trust_access_group" "family" {
  account_id = var.account_id
  name       = "Family"
  include {
    email = [
      "dron.pavlov@gmail.com",
      "romanenko.julia@gmail.com",
      "yr.and.ap@gmail.com",
    ]
  }
}

resource "cloudflare_zero_trust_access_group" "media-external" {
  account_id = var.account_id
  name       = "Media / External"
  include {
    email = [
      "zabkov@gmail.com",
      "zabkovan@gmail.com",
    ]
  }
}

resource "cloudflare_zero_trust_access_group" "vpn" {
  account_id = var.account_id
  name       = "VPN"
  include {
    email = [
      "klivenn@gmail.com",
      "luyda.margo@gmail.com",
    ]
  }
}
