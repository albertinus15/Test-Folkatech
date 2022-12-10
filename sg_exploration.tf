module "sg_exploration" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.17.0"

  provider "aws" {
    region = "ap-southeast-3"
  }

  name        = "sg_exploration"
  description = "Security group for java_template"
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id_exploration

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH"
      cidr_blocks = "0.0.0.0/0"
    },
  ]

  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}