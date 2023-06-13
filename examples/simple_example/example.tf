provider "aws" {
  region  = "us-east-1"
  profile = "example-main-account-profile"
}

module "vpc" {

  source       = "../.."
  cidr_block   = "10.10.0.0/16"
  name         = "example-vpc"
  environment  = "dev"
  enabled_ipv6 = true

  az_count = 3

  additional_tags = merge(
    {
      extra = "extra tag"
    }
  )

}