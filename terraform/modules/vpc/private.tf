resource "aws_subnet" "subnet_private_1a" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.vpc_private_subnets[0]
  availability_zone = var.vpc_azs[0]

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}-subnet-private-1a",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "subnet_private_1b" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.vpc_private_subnets[1]
  availability_zone = var.vpc_azs[1]

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}-subnet-private-1b",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "subnet_private_1c" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.vpc_private_subnets[2]
  availability_zone = var.vpc_azs[2]

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}-subnet-private-1c",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_route_table_association" "route_table_association_private_1a" {
  subnet_id = aws_subnet.subnet_private_1a.id
  route_table_id = aws_route_table.private_route_table_1a.id
}

resource "aws_route_table_association" "route_table_association_private_1b" {
  subnet_id = aws_subnet.subnet_private_1b.id
  route_table_id = aws_route_table.private_route_table_1b.id
}

resource "aws_route_table_association" "route_table_association_private_1c" {
  subnet_id = aws_subnet.subnet_private_1c.id
  route_table_id = aws_route_table.private_route_table_1c.id
}