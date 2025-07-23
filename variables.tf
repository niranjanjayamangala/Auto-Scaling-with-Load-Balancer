variable "vpc_id" {
  description = "The VPC ID where resources will be created"
  type        = string
  validation {
    condition     = can(regex("^vpc-", var.vpc_id))
    error_message = "VPC ID must start with 'vpc-'."
  }
}
variable "subnet_ids" {
  type = list(string)
}
