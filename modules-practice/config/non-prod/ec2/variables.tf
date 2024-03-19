variable "region" {
  description = "default region"
  type = string
  default = "us-west-2"
}

variable "ami" {
    # default = "ami-0fc5d935ebf8bc3bc" # east us 1
    default = "ami-07bff6261f14c3a45"
    description = "image id"
}

variable "instance_type" {
  default = "t2.micro"
  description = "type of an istance"
}

