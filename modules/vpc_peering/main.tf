
data "aws_vpc" "vpc" {
  state = "available"
  tags  = var.existing_vpc_tags
}

data "aws_caller_identity" "owner" {
}
data "aws_route_table" "routetable" {
  tags = var.existing_routetable_tags
}
resource "aws_vpc_peering_connection" "vpc" {
  peer_owner_id = data.aws_caller_identity.owner.account_id
  peer_vpc_id   = data.aws_vpc.vpc.id
  vpc_id        = var.vpc_id
  auto_accept   = true
    accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}
resource "aws_route" "peering_1" {
  route_table_id            = var.peering1_id
  destination_cidr_block    = data.aws_vpc.vpc.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc.id
}
resource "aws_route" "peering_2" {
  route_table_id            = data.aws_route_table.routetable.id
  destination_cidr_block    = var.destination_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc.id
}
