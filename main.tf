# main.tf

provider "aws" {
  #access_key = var.aws_access_key
  #secret_key = var.aws_secret_key
  region     = "us-east-1" # Replace with your desired AWS region
}

resource "aws_instance" "example_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name  # Custom name for the EC2 instance
  }
}

output "instance_id" {
  value = aws_instance.example_instance[*].id
}