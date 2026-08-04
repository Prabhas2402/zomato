module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
  environment        = var.environment
}

module "security_group" {
  source = "./modules/security_group"

  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"

  instance_type     = var.instance_type
  instance_name     = var.instance_name
  security_group_id = module.security_group.security_group_id
  subnet_id         = module.vpc.public_subnet_id
}
