# Creating the EC2 instance

resource "aws_instance" "my-webapp-1" {
  ami           = var.EC2-AMI
  key_name      = var.EC2-key-pair
  instance_type = var.EC2-instance-type
  subnet_id = aws_subnet.mysubnet-1a.id
  vpc_security_group_ids = [aws_security_group.allow_80_22.id]
  # security_groups = ["security_demo_port"]
  tags = {
    Name            = "my-webapp-1"
  }

}

resource "aws_instance" "my-webapp-2" {
  ami           = var.EC2-AMI
  key_name      = var.EC2-key-pair
  instance_type = var.EC2-instance-type
  subnet_id = aws_subnet.mysubnet-1b.id
  vpc_security_group_ids = [aws_security_group.allow_80_22.id]
  # security_groups = ["security_demo_port"]
  tags = {
    Name            = "my-webapp-2"
  
  }

}




