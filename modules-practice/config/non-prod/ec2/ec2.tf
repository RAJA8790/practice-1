module "ec2_np" {
  source = "../../../modules/ec2_instance"
  ami = var.ami
  instance_type = var.instance_type
  
}