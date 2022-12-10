module "vpc_exploration" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.16.0"
  provider "aws" {
    region = "ap-southeast-3"
  }

  name = "vpc-exploration"
  cidr = "172.17.0.0/16"
  azs             = ["ap-southeast-3a","ap-southeast-3b"]
  private_subnets = ["172.17.1.0/24", "172.17.2.0/24"]
  public_subnets  = ["172.17.3.0/24", "172.17.4.0/24"]

  enable_nat_gateway              = true
  single_nat_gateway              = true
  one_nat_gateway_per_az          = false
  enable_dns_hostnames            = true

  private_subnet_tags = {
    Scope = "private"
  }
  public_subnet_tags = {
    Scope = "public"
  }
}