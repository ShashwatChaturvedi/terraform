variable "region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  default     = "my-eks-cluster"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "instance_type" {
  description = "Instance type for EC2 and EKS worker nodes"
  default     = "t3.medium"
}

variable "ec2_ami" {
  description = "AMI ID for EC2"
  default     = "ami-0dee22c13ea7a9a67"
}

variable "rds_password" {
  description = "Password for RDS"
  type        = string
  default     = "strong_password_123"
}

variable "rds_db_name" {
  description = "Database name for RDS"
  default     = "mydb"
}

variable "rds_user" {
  description = "Username for RDS"
  default     = "admin"
}
