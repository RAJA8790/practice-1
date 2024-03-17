# Fetch available AZs from AWS
data "aws_availability_zones" "available" {}
# Store AZ names in a variable
locals {
  default = data.aws_availability_zones.available.names
}

output "list_avz" {
    value = local.default
}
