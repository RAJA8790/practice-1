resource "aws_instance" "web-vm" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "web_istance"
  }

}
