resource "aws_db_instance" "this" {
  identifier            = var.db_name         # This is the correct way to set the identifier
  engine                = "mysql"
  instance_class        = "db.t3.medium"
  allocated_storage      = 20
  engine_version        = "5.7.44"
  username              = var.db_user
  password              = var.db_password
  db_subnet_group_name  = aws_db_subnet_group.rds_subnet_group.name
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = var.subnet_group_name
  subnet_ids = var.private_subnets
}
