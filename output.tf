output "instance_info" {
  description = "Information about the created EC2 instance"
  value = {
    instance_id   = aws_instance.example_instance.id
    instance_name = aws_instance.example_instance.tags.Name
    public_ip     = aws_instance.example_instance.public_ip
  }
}