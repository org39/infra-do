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

module "dns" {
  source = "./modules/dns"

  # common variables
  env    = var.env
  region = var.region

  # dns variables
  domain = {
    name = "org39.com"
  }

  # record variables
  records = {
    loop = {
      type  = "A"
      value = "127.0.0.1"
    }
  }
}
