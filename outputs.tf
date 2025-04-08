output "ip_publica" {
  value = aws_instance.terraform_test_server.public_ip
}