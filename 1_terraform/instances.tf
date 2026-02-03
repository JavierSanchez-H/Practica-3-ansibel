resource "aws_instance" "frontend" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [
    aws_security_group.frontend.name
  ]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [
    aws_security_group.backend.name
  ]

  tags = {
    Name = "backend"
  }
}