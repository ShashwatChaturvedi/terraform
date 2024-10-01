data "aws_availability_zones" "available" {}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "MainVPC"
  }
}

resource "aws_subnet" "public" {
  count             = 2  # Example: Create 2 public subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr_block, 8, count.index)
  availability_zone = data.aws_availability_zones.available.names[count.index]  # Use the data source here
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet-${count.index}"
  }
}

resource "aws_subnet" "private" {
  count             = 2  # Example: Create 2 private subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr_block, 8, count.index + 2)
  availability_zone = data.aws_availability_zones.available.names[count.index]  # Use the data source here

  tags = {
    Name = "PrivateSubnet-${count.index}"
  }
}
