variable "private_routeTable_tags" {
  type        = map(string)
  description = "tags for OpenSearch pvt_rtTable vpc"
  default = {
    Name    = "os-private-routeTB",
    Owner   = "Rishabh Arora",
    purpose = "os data node"

  }
}
variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for OpenSearch vpc"
}
variable "igw_id" {
  default     = ""
  type        = string
}
