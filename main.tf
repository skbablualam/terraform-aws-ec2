resource "aws_instance" "bablu_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "Bablu-TF-EC2"
  }
}
