resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  enable_dns_hostnames           = true
  enable_classiclink_dns_support = false

  tags = {
    Name = "main"
  }
}

output "vpc_id" {
  value       = aws_vpc.main
  description = "VPC id"
}