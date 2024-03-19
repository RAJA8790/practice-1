output "public_ip" {
  value = aws_instance.web-vm.public_dns
}