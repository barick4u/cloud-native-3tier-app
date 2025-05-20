provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web-app" {
  ami           = "ami-0e35ddab05955cf57"
  count         = 1
  instance_type = "t2.micro"
  key_name      = "solidtime"
  root_block_device {
    volume_size = 30    # <-- This sets root volume to 30 GiB
    volume_type = "gp3" # or "gp2" if you prefer
  }
  tags = {
    Name = "web-server"
  }
  user_data                   = file("install.sh")
  vpc_security_group_ids      = [aws_security_group.sg.id]
  associate_public_ip_address = true
}

resource "aws_security_group" "sg" {
  description = "this is security group for ingress"
  dynamic "ingress" {
    for_each = toset([22, 80, 8080, 3000, 5000, 5432])
    content {
      protocol    = "tcp"
      to_port     = ingress.value
      from_port   = ingress.value
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
