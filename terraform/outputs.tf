output "vpc_id" {
  description = "Created VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "Created public subnet ID"
  value       = module.vpc.public_subnet_id
}

output "instance_id" {
  description = "Created EC2 instance ID"
  value       = module.ec2.instance_id
}

output "public_ip" {
  description = "EC2 public IP"
  value       = module.ec2.public_ip
}
