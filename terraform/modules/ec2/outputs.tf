output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.zomato.id
}

output "public_ip" {
  description = "EC2 public IP address"
  value       = aws_instance.zomato.public_ip
}
