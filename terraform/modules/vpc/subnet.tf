resource "aws_subnet" "public" {
  count = length(var.vpc_public_subnets)

  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.vpc_public_subnets[count.index]
  availability_zone       = var.vpc_azs[count.index]
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-public-subnet-${count.index + 1}",

      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "private" {
  count = length(var.vpc_private_subnets)

  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.vpc_private_subnets[count.index]
  availability_zone = var.vpc_azs[count.index]

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}-private-subnet-${count.index + 1}",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}