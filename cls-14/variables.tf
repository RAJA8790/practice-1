variable "region" {
  default = "ca-central-1"
}

variable "ami" {
    default = "ami-0ed90a3b5bde5e371"
    description = "image id"
}

variable "instance_type" {
  default = "t2.micro"
  description = "type of an istance"
}


