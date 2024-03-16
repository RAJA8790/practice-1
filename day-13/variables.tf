provider "aws" {
  region = "us-west-1"
}

data "aws_availability_zones" "available" {
  state = "available"
}

output "list_avz" {
  value = data.aws_availability_zones.available.names
}

# data "aws_availability_zones" "available" {}
# # Store AZ names in a variable
# variable "azs" {
#   default = data.aws_availability_zones.available.names
# }
# # Output available AZs for reference
# output "available_azs" {
#   value = var.azs
# }

variable "avz" {
  default = data.aws_availability_zones.available.names
}

variable "ami" {
    default = "ami-0fc5d935ebf8bc3bc"
    description = "image id"
}

variable "instance_type" {
  default = "t2.micro"
  description = "type of an istance"
}

