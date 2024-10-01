variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  default     = "ami-0522ab6e1ddcc7055"  # Replace with your AMI ID
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be launched"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to attach to the EC2 instance"
  type        = string
}
