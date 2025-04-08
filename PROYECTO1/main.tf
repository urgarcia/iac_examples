# Define el proveedor (AWS)
provider "aws" {
  region = "us-east-1"
}

# Crea una instancia EC2
resource "aws_instance" "terraform_test_server" {
  ami           = "ami-0a313d6098716f372"  # AMI de Ubuntu 22.04 LTS en us-east-1
  instance_type = "t2.micro"               # Tipo de instancia gratuita (Free Tier)
  vpc_security_group_ids = [aws_security_group.mi_servidor_sg.id] # Asocia el SG creado
  key_name = "UGAR_WSL_RSA"
  tags = {
    Name = "TERRAFORM_TEST_SERVER"
  }
}
