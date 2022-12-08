provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name                    = var.instance_name
  ami                     = var.ami
  # vpc_id                  = var.vpc_id
  instance_type           = var.instance_type
  key_name                = var.key_name
  vpc_security_group_ids  = var.vpc_security_group_ids
  subnet_id               = var.subnet_id

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Owner       = "shared"
    CostCode    = "true"
    Backup      = "true"
  }
}