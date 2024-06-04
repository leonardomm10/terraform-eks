resource "aws_subnet" "subnet_public_1a" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.vpc_public_subnets[0]
  availability_zone       = var.vpc_azs[0]
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                     = "${var.project_name}-subnet-public-1a",
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "subnet_public_1b" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.vpc_public_subnets[1]
  availability_zone       = var.vpc_azs[1]
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                     = "${var.project_name}-subnet-public-1b",
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "subnet_public_1c" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.vpc_public_subnets[2]
  availability_zone       = var.vpc_azs[2]
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                     = "${var.project_name}-subnet-public-1c",
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_route_table_association" "route_table_association_1a" {
  subnet_id = aws_subnet.subnet_public_1a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "route_table_association_1b" {
  subnet_id = aws_subnet.subnet_public_1b.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "route_table_association_1c" {
  subnet_id = aws_subnet.subnet_public_1c.id
  route_table_id = aws_route_table.public_route_table.id
}