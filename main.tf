

module "vpc_peering" {
  source      = "./modules/vpc_peering"
  peering1_id = module.pvt_rt_table.private_routeTable_id
  vpc_id = module.machine.vpc-id
  existing_vpc_tags = var.existing_vpc_tags
  existing_routetable_tags = var.existing_routetable_tags
  destination_cidr_block = var.vpc_cidr
}


module "machine" {
  source   = "./modules/vpc"
  vpc_cidr   = var.vpc_cidr
  vpc_tags = var.vpc_tags
}
module "network" {
  source   = "./modules/igw"
  vpc_id   = module.machine.vpc-id
  igw_tags = var.igw_tags
}
module "pb_subnet" {
  source               = "./modules/publicsubnet"
  vpc_id               = module.machine.vpc-id
  public_subnet_cidr   = var.public_subnet_cidr
  public_subnet_tags   = var.public_subnet_tags
  public_subnet_zone   = var.public_subnet_zone
  public_routeTable_id = module.pb_rt_table.public_routeTable_id
}
module "traffic" {
  source           = "./modules/nat"
  public_subnet_id = module.pb_subnet.public-subnet-id
  NAT_tags         = var.NAT_tags
}
module "pb_rt_table" {
  source                 = "./modules/pbroutetable"
  vpc_id                 = module.machine.vpc-id
  igw_id                 = module.network.igw-id
  public_routeTable_tags = var.public_routeTable_tags
}
module "pvt_subnet1" {
  source                = "./modules/privatesubnet"
  vpc_id                = module.machine.vpc-id
  private_subnet_tags   = var.private_subnet1_tags
  private_subnet_cidr   = var.private_subnet1_cidr
  private_subnet_zone   = var.private_subnet1_zone
  private_routeTable_id = module.pvt_rt_table.private_routeTable_id
}
module "pvt_subnet2" {
  source                = "./modules/privatesubnet"
  vpc_id                = module.machine.vpc-id
  private_subnet_tags   = var.private_subnet2_tags
  private_subnet_cidr   = var.private_subnet2_cidr
  private_subnet_zone   = var.private_subnet1_zone
  private_routeTable_id = module.pvt_rt_table.private_routeTable_id
}
module "pvt_rt_table" {
  source                  = "./modules/pvtroutetable"
  vpc_id                  = module.machine.vpc-id
  nat_id                  = module.traffic.nat-id
  private_routeTable_tags = var.private_routeTable_tags
}
module "pvt_sg" {
  source      = "./modules/pvtsg"
  sg_pvt      = var.sg_pvt
  vpc_id      = module.machine.vpc-id
  cidr        = var.vpc_cidr
  pvt_sg_tags = var.pvt_sg_tags
}
module "pb_sg" {
  source     = "./modules/pbsg"
  sg_pb      = var.sg_pb
  vpc_id     = module.machine.vpc-id
  cidr        = var.vpc_cidr  
  pb_sg_tags = var.pb_sg_tags
}
# module "access_key" {
#   source   = "./modules/keypair"
#   key_name = var.access_key
#   key_path = var.key_path
# }
module "manager" {
  source         = "./modules/ec2"
  ami            = var.ami
  subnet         = module.pb_subnet.public-subnet-id
  security_group = module.pb_sg.public-sg-id
  ec2_tags       = var.manager_tags
  key_id         = var.key_id
}
module "node1" {
  source         = "./modules/ec2"
  ami            = var.ami
  subnet         = module.pvt_subnet1.private-subnet-id
  security_group = module.pvt_sg.private-sg-id
  ec2_tags       = var.node1_tags
  key_id         = var.key_id
}
module "node2" {
  source         = "./modules/ec2"
  ami            = var.ami
  subnet         = module.pvt_subnet2.private-subnet-id
  security_group = module.pvt_sg.private-sg-id
  ec2_tags       = var.node2_tags
  key_id         = var.key_id
}
