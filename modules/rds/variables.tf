variable "private_subnets" {
  description = "List of private subnet IDs for RDS"
  type        = list(string)
}

variable "db_name" {
  description = "Database name"
  default     = "mydb"
}

variable "db_user" {
  description = "Database username"
  default     = "admin"
}

variable "db_password" {
  description = "Database password"
}

variable "subnet_group_name" {
  description = "RDS Subnet Group Name"
}
