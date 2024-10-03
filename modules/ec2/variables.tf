variable "ami" {
  description = "AMI for EC2 instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.medium"
}

variable "key_name" {
  description = "Key pair name for EC2 instance"
}

variable "subnet_id" {
  description = "Subnet ID where EC2 instance will be launched"
}

variable "instance_name" {
  description = "Name tag for the instance"
  default     = "MyInstance"
}
