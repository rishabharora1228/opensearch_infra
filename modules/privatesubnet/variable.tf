variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for OpenSearch vpc"
}
variable "private_subnet_cidr" {
  type        = string
  description = "CIDR block for subnet"
  default     = ""
}
variable "private_subnet_tags" {
  default     = {}
  description = "tags for OpenSearch subnet"
  type        = map(string)
}
variable "private_subnet_zone" {
  default     = {}
}
variable "private_routeTable_id" {
  default     = {}
}