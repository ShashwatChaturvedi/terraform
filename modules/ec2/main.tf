resource "aws_instance" "web" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id       # Use the subnet_id passed from the root module
  vpc_security_group_ids = [var.security_group_id]  # Use the security_group_id passed from the root module

  tags = {
    Name = "MyEC2Instance"
  }
}
