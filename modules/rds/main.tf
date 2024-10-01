resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = var.subnet_ids
  description = "RDS subnet group"

  tags = {
    Name = "RDSSubnetGroup"
  }
}

resource "aws_db_parameter_group" "mysql5_7" {
  name        = "custom-mysql57"  # Corrected name to comply with AWS requirements
  family      = "mysql5.7"
  description = "Custom parameter group for MySQL 5.7"

  parameter {
    name  = "autocommit"
    value = "1"
  }

  tags = {
    Name = "CustomMySQL57ParameterGroup"
  }
}

resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "5.7.44"  # Ensure you're using MySQL 5.7
  instance_class       = "db.t3.micro"
  db_name              = var.db_name
  username             = var.username
  password             = var.password
  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name = aws_db_subnet_group.main.name
  parameter_group_name = aws_db_parameter_group.mysql5_7.name
  skip_final_snapshot  = true
}
