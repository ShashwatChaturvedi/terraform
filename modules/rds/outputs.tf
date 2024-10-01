output "db_instance_id" {
  description = "The ID of the RDS instance"
  value       = aws_db_instance.db.id  # Ensure this matches the actual resource name
}
