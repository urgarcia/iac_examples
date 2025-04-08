
resource "aws_security_group" "mi_servidor_sg" {
  name_prefix = "mi-servidor-sg"
  vpc_id      = data.aws_vpc.default.id # Asume que estás usando el VPC por defecto

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Permite SSH desde cualquier IP (¡Considera restringir esto!)
    description = "Permite trafico SSH"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Permite todo el trafico saliente
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "mi-servidor-security-group"
  }
}

# Obtén información sobre el VPC por defecto (si lo estás usando)
data "aws_vpc" "default" {
  default = true
}