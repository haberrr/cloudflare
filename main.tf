terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }

  backend "gcs" {
    bucket = "haberr-terraform"
    prefix = "cloudflare"
  }
}

provider "cloudflare" {
  api_token = "U0Qdb7ILRGxKPziQ2JjQn8lUoa3l9VJgqVXxxjVB"
}

variable "zone_id" {
  default = "b94fdfc99159f6edb6c6fee32c42993a"
}

variable "account_id" {
  default = "e2263f5d202f036d2c73a8f8836870df"
}

