resource "aws_nat_gateway" "nat_gateway" {
  count = length(aws_subnet.public)

  allocation_id = aws_eip.eip[count.index].id
  subnet_id     = aws_subnet.public[count.index].id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ngw-${count.index + 1}"
    }
  )
}