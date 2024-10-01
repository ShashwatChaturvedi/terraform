module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.0.0"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnets

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"  # Change the instance type here
      key_name      = "your-ec2-key-pair"  # Optional: only add this if you have a key pair
      disk_size     = 20
      additional_security_group_ids = [aws_security_group.main.id]  # Link the security group

      tags = {
        Name = "eks-node-group"
      }
    }
  }

  tags = {
    Name = "my-eks-cluster"
  }
}
