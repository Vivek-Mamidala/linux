module "vpc" {
  source = "./modules/vpc"

  vpc_name    = "project-31-dev-vpc"
  cidr_block  = "10.31.0.0/16"
  environment = var.environment
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id              = module.vpc.vpc_id
  security_group_name = "project-31-dev-sg"
  description         = "Security group for Project 31 EC2 instance"
  environment         = var.environment
}

module "ec2" {
  source = "./modules/ec2"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.security_group_id
  instance_name     = "project-31-dev-ec2"
  environment       = var.environment
}
