# AWS VPC Terraform Module

This module creates VPC with two subnets, private and public, Internet Gateway, NAT gateway and EIP connected to NAT GW.

## Requirements

Terraform >= 1.9.8

## Input Variables

- `cidr_block` - cidr  block for VPC
- `public_subnet_cidr_block` - cidr block for public subnet
- `private_subnet_cidr_block` - cidr block for private subnet
- `enable_nat` - enable nat
- `vpc_name` - VPC name
- `region` - aws region


## Example of usage

```hcl
module "aws-vpc" {
  source        = "git::https://github.com/lek-x/aws-vpc-module.git?ref=v1.0.0"

  vpc_name        = "main-vpc"
  cidr_block = "10.0.0.0/16"
  public_subnet   = "10.0.1.0/28"
  private_subnet  = "10.0.2.0/28"
  region = "eu-central-1"
  enable_nat = true
}
```

##  License
GPL v3.0
