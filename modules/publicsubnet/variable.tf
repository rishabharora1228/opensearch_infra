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
  default     = {}
}
variable "public_routeTable_id" {
  default     = {}
}
variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for OpenSearch vpc"
}