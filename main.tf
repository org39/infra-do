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
  }
}

module "kubernetes" {
  source = "./modules/kubernetes"

  # common variables
  env    = var.env
  region = var.region

  # kubernetes variables
  cluster = {
    name    = "k8s-01"
    vpc_id  = module.vpc.vpc.id
    version = "1.22.8-do.1"
    tags    = ["k8s", "k8s:e921d20e-a13a-443f-871f-4b53ec1cd4fb", "k8s:k8s-01"]
    default_node_pool = {
      name  = "default"
      size  = "s-2vcpu-4gb"
      count = 1
    }
  }
}


