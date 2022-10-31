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