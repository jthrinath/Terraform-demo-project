# Creating the security group for EC2 instance

resource "aws_security_group" "allow_80_22" {
  name        = "allow_port-80-and-port-22"
  description = "Allow HTTP and SSH"
  vpc_id      = aws_vpc.Demo-terraform-project.id

  ingress {
    description      = "allow port 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0","115.96.60.14/32"]
  }

  ingress {
    description      = "allow port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0","115.96.60.14/32"]
  }

  egress {
    from_port        = 0
    to_port          = 65535
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_80_22"
  }
}