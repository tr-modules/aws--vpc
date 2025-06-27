# create internet gateway
resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.project_name}_internet_gateway"
  }
}
