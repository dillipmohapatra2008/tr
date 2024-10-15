output "vpc_id" {
  value       = aws_vpc.Custom_VPC.id
  description = "This is VPC id"
}

output "enable_dns_support" {
  value       = aws_vpc.Custom_VPC.enable_dns_support
  description = "Check whether dns support is enabled for VPC"
}

output "enable_dns_hostnames" {
  value       = aws_vpc.Custom_VPC.enable_dns_hostnames
  description = "Check whether dns hostname is enabled for VPC"
}
