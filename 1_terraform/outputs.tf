output "frontend_ip" {
  value = aws_eip.frontend.public_ip
}

output "backend_ip" {
  value = aws_eip.backend.public_ip
}