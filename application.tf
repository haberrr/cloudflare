resource "cloudflare_zero_trust_access_application" "jellyfin" {
  account_id = var.account_id
  name       = "Jellyfin"
  domain     = "jellyfin.haberr.cc"
  type       = "self_hosted"

  allow_authenticate_via_warp = true
  http_only_cookie_attribute  = true
  logo_url                    = "https://static-00.iconduck.com/assets.00/jellyfin-icon-1024x1024-udvadsvh.png"
  session_duration            = "336h"

  policies = [
    cloudflare_zero_trust_access_policy.jellyfin_token.id,
    cloudflare_zero_trust_access_policy.network.id,
    cloudflare_zero_trust_access_policy.family.id,
    cloudflare_zero_trust_access_policy.media-external.id,
  ]
}

