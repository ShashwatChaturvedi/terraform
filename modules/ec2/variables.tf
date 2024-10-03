variable "cluster_name" {
  description = "The name of the EKS cluster"
  default     = "my-eks-cluster"
}

variable "vpc_id" {
  description = "The VPC ID where EKS will be deployed"
}

variable "public_subnet_ids" {
  description = "Public Subnet IDs for EKS"
  type        = list(string)
}
