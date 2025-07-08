variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"

}

variable "private_subnet_cidr_block" {
  description = "CIDR block for private subnets."
  type        = string
  default     = "10.0.1.0/28"
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for public subnets."
  type        = string
  default     = "10.0.2.0/28"
}

variable "region" {
  description = "value for AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "enable_nat" {
  description = "Enable NAT Gateway"
  type        = bool
  default     = true
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "module_vpc"

}
