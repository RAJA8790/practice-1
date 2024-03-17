resource "aws_instance" "web-vm" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = "key2"
  depends_on = [ aws_key_pair.key ]
  tags = {
    Name = "web"
  }

}