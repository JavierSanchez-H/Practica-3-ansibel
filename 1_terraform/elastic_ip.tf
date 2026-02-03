resource "aws_eip" "frontend" {
  instance = aws_instance.frontend.id
}

resource "aws_eip" "backend" {
  instance = aws_instance.backend.id
}