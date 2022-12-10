module "ec2_exploration" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.15.0"

  provider "aws" {
    region = "ap-southeast-3"
  }

  name                        = "ec2-exploration"
  instance_count              = 1
  associate_public_ip_address = true

  ami                  = "ami-017c2122089c9c605"
  instance_type        = "t3.small"
  key_name             = "key-pair"
  subnet_id            = data.terraform_remote_state.vpc.outputs.public_subnets_list[0]
  vpc_security_group_ids = [
    module.sg_exploration.this_security_group_id,
  ]
  root_block_device = [
    {
      delete_on_termination = true
      volume_size           = "30"
      volume_type           = "gp3"
    }
  ]
}