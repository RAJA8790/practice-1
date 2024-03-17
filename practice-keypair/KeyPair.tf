resource "aws_key_pair" "key" {
  key_name   = "key2"
  public_key = file("key2.pem.pub")
}