output "vpc_id" {
  value = module.vpc.vpc_id
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_node_group" {
  value = aws_eks_node_group.eks_node_group.id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "rds_instance_endpoint" {
  value = module.rds.db_instance_endpoint
}

output "security_group_id" {
  value = module.security_groups.sg_id
}
