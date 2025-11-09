terraform {
  required_providers {
    aws = {
      source  = ""hashicorp/aws""
      version = ""~> 4.0""
    }
  }
  required_version = "">= 1.0.0""
}

provider ""aws"" {
  region = var.aws_region
}

resource ""aws_instance"" ""nautobot_server"" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = ""nautobot-server""
  }
}

output ""instance_ip"" {
  value = aws_instance.nautobot_server.public_ip
}
