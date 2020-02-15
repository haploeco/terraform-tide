provider "digitalocean" {}

terraform {
  backend "s3" {
    bucket  = "haplolabs"
    key     = "tide/terraform.tfstate"
    region  = "us-east-1"
    endpoint = "https://sfo2.digitaloceanspaces.com"

    skip_region_validation        = true
    skip_credentials_validation   = true
    skip_get_ec2_platforms        = true
    skip_requesting_account_id    = true
    skip_metadata_api_check       = true
  }
}

variable "instance_count" {
  default = 2
}

variable "region" {
  default = "sfo2"
}
