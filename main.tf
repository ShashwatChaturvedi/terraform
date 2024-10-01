module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = "10.0.0.0/16"
}

module "security_groups" {
  source = "./modules/security-groups"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source           = "./modules/ec2"
  ami_id           = "ami-0522ab6e1ddcc7055"
  instance_type    = "t2.micro"
  subnet_id        = module.vpc.public_subnet_ids[0]  # Pass the first public subnet to the EC2 module
  security_group_id = module.security_groups.sg_id    # Pass the security group ID to the EC2 module
}

module "rds" {
  source           = "./modules/rds"
  db_name          = "mydb"
  username         = "admin"
  password         = "strongpassword123"  # Ensure this is explicitly passed
  security_group_id = module.security_groups.sg_id
  subnet_ids       = module.vpc.private_subnet_ids
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.0.0"  # Specify the version of the module
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.public_subnet_ids  # This is the correct attribute
}