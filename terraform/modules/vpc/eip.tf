resource "aws_eip" "eip" {
  count = length(var.vpc_azs)

  domain = "vpc"
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eip-${count.index}"
    }
  )
}