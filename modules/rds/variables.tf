variable "db_name" {
  description = "The name of the database"
}

variable "username" {
  description = "The username for the RDS instance"
}

variable "password" {
  description = "The password for the RDS instance"
  type        = string
  default     = "strongpassword123"  # Ensure this is at least 8 characters
}

variable "security_group_id" {
  description = "The security group ID for the RDS instance"
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the RDS instance"
  type        = list(string)
}
