module "vpc" {
  source = "../module"

  name = "Hubzu-Prod"

  cidr = "10.216.64.0/19"
  private_subnets = ["10.216.65.0/24", "10.216.67.0/24"]
  public_subnets  = ["10.216.64.0/24", "10.216.66.0/24"]

  #single_nat_gateway = "true"
  enable_nat_gateway = "true"

  azs      = ["us-east-1a", "us-east-1b"]

  private_subnet_tags = ["prod-private-primary-1a", "prod-private-secondary-1b"]
  public_subnet_tags = ["prod-public-primary-1a", "prod-public-secondary-1b"]
  
  tags {
    "Terraform" = "true"
  }
}
