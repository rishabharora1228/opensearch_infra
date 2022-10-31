resource "aws_subnet" "private_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_cidr
  tags              = var.private_subnet_tags
  availability_zone = var.private_subnet_zone
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = var.private_routeTable_id
}
