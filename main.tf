module "vpc" {
  source = "./modules/vpc"

  # common variables
  env    = var.env
  region = var.region

  # vpc variables
  vpc = {
    name     = "vpc-01"
    ip_range = "10.104.0.0/20"
  }
}
