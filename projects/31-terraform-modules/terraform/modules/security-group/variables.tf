variable "vpc_id" {
  description = "VPC ID where the Security Group will be created"
  type        = string
}

variable "security_group_name" {
  description = "Name of the Security Group"
  type        = string
}

variable "description" {
  description = "Security Group description"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

