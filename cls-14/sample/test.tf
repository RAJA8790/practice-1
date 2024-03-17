provider "aws" {
  region = "us-east-1"
}

# Fetch available AZs from AWS
data "aws_availability_zones" "available" {}
# Store AZ names in a variable
locals {
  default = data.aws_availability_zones.available.names
}
# Output available AZs for reference
output "available_azs" {
  value = local.default
}

variable "vpc_id" {
  default = "vpc-04b038817998e0ad5"
}


# data "aws_subnet_ids" "vpc" {
#   vpc_id = var.vpc_id
# }

# data "aws_subnet" "subnet_val" {
#   count = length(data.aws_subnet_ids.subnet_val.ids)
#   id    = element(tolist(data.aws_subnet_ids.subnet_val.ids), count.index)
# }

# output "subnet_ids" {
#   value = data.aws_subnet.subnet_val
# }


data "aws_subnet_ids" "example" {
  vpc_id = var.vpc_id
}

data "aws_subnet" "example" {
  for_each = data.aws_subnet_ids.example.ids
  id       = each.value
}

output "listsb" {
  value = data.aws_subnet.example
}