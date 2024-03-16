resource "aws_instance" "web-vm" {
  count = length(var.avz)  # Create one instance per AZ
  
  # Spread instances across AZs by specifying availability_zone
  availability_zone = var.avar.avz[count.index]
  # Other instance configurations...
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "web"
  }
}

