variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for OpenSearch vpc"
}
variable "vpc_tags" {
  default     = {}
  type        = map(string)
  description = "tags for OpenSearch vpc"
}
variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for subnet"
  default     = ""
}
variable "public_subnet_tags" {
  default     = {}
  description = "tags for OpenSearch subnet"
  type        = map(string)
}
variable "public_subnet_zone" {
  default = {}
}
variable "private_subnet1_cidr" {
  type        = string
  description = "CIDR block for subnet1"
  default     = ""
}
variable "private_subnet1_tags" {
  default     = {}
  description = "tags for OpenSearch subnet1"
  type        = map(string)
}
variable "private_subnet2_cidr" {
  type        = string
  description = "CIDR block for subnet2"
  default     = ""
}
variable "private_subnet2_tags" {
  default     = {}
  description = "tags for OpenSearch subnet2"
  type        = map(string)
}
variable "private_subnet1_zone" {
  default = {}
}
variable "private_subnet2_zone" {
  default = {}
}
variable "sg_pvt" {
  type        = string
  description = "private security group"
  default     = "os-engine-pvt-sg"
}
variable "sg_pb" {
  type        = string
  description = "public security group"
  default     = "os-engine-public-sg"
}
variable "https_port" {
  type        = string
  description = "TCP port for https"
  default     = "443"
}
variable "ssh_port" {
  type        = string
  description = "TCP port for ssh"
  default     = "22"
}
variable "os_dashboard_port" {
  type        = string
  description = "TCP port for OpenSearch dashboard"
  default     = "5601"
}
variable "os_restAPI_port" {
  type        = string
  description = "TCP port for OpenSearch REST API"
  default     = "9200"
}
variable "os_crossCluster_port" {
  type        = string
  description = "TCP port for OpenSearch cross-cluster"
  default     = "9250"
}
variable "os_nodeCommunication_port" {
  type        = string
  description = "TCP port for OpenSearch node-communication"
  default     = "9300"
}
variable "os_performance_analyzer_port" {
  type        = string
  description = "TCP port for OpenSearch Performance Analyzer port"
  default     = "9600"
}
variable "pvt_sg_tags" {
  default     = {}
  description = "Prvate Security group tags for OpenSearch"
  type        = map(string)
}
variable "pb_sg_tags" {
  default     = {}
  description = "Public Security group tags for OpenSearch"
  type        = map(string)
}
variable "private_routeTable_tags" {
  description = "tags for OpenSearch pvt_rtTable vpc"
  default = {
    Name    = "os-private-routeTB",
    Owner   = "Rishabh Arora",
    purpose = "os data node"

  }
}
variable "public_routeTable_tags" {
  description = "tags for OpenSearch vpc"
  default = {
    Name    = "os-pb-routeTB",
    Owner   = "Rishabh Arora",
    purpose = "opensearch-manager"
  }
}
variable "NAT_tags" {
  description = "nat-tags for OpenSearch vpc"
  default = {
    Name    = "opensearch-nat",
    Owner   = "Rishabh Arora",
    purpose = "opensearch-nat"
  }
}
variable "igw_tags" {
  description = "tag for internet gateway of os-vpc"
  default = {
    Name  = "opensearch-igw"
    Owner = "Rishabh Arora"
  }
}
variable "ami" {
  type        = string
  description = "ami id for OpenSearch instances"
  default     = ""
}
variable "manager_tags" {
  type        = map(string)
  description = "tags for OpenSearch data-node1 instance"
  default = {}
}
variable "node1_tags" {
  type        = map(string)
  description = "tags for OpenSearch data-node1 instance"
  default = {}
}
variable "node2_tags" {
  type        = map(string)
  description = "tags for OpenSearch data-node1 instance"
  default = {}
}
variable "access_key" {
default = ""
}
variable "key_path" {
default = ""
}