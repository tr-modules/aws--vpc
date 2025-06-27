# Elastic IP for NAT Gateway
resource "aws_eip" "nat" {
  count      = length(var.private_subnets) > 0 ? 1 : 0
  domain     = "vpc"
  depends_on = [aws_internet_gateway.this]
}

# NAT Gateway
resource "aws_nat_gateway" "this" {
  count = var.create_nat_gateway ? 1 : 0
  allocation_id = aws_eip.nat[0].id
  subnet_id     = aws_subnet.public[0].id
  depends_on    = [aws_internet_gateway.this]

  tags = {
    Name = "${var.project_name}_nat_gateway"
  }
}
