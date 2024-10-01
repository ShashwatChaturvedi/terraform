variable "cluster_name" {
  description = "The name of the EKS cluster"
  default     = "my-eks-cluster"  # Replace with your preferred cluster name
}

variable "cluster_version" {
  description = "The version of the EKS cluster"
  default     = "1.21"  # Replace with your preferred EKS version
}
