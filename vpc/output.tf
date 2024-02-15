output "vpc_id" {
  description = "ID of VPC"
  value       = try(aws_vpc.this[0].id, "")
}

output "vpc_arn" {
  description = "ARN of VPC"
  value       = try(aws_vpc.this[0].arn, "")
}

output "vpc_cidr_block" {
  description = "CIDR block of VPC"
  value       = try(aws_vpc.this[0].cidr_block, "")
}

output "default_security_group_id" {
  description = "ID of default security group"
  value       = try(aws_vpc.this[0].default_security_group_id, "")
}

output "default_network_acl_id" {
  description = "ID of default ACL"
  value       = try(aws_vpc.this[0].default_network_acl_id, "")
}

output "default_route_table_id" {
  description = "ID of default route table"
  value       = try(aws_vpc.this[0].default_route_table_id, "")
}

output "vpc_instance_tenancy" {
  description = "Tenancy of instances in VPC"
  value       = try(aws_vpc.this[0].instance_tenancy, "")
}

output "vpc_enable_dns_support" {
  description = "Is DNS support enable"
  value       = try(aws_vpc.this[0].enable_dns_support, "")
}

output "vpc_enable_dns_hostnames" {
  description = "Is DNS hostname support enable"
  value       = try(aws_vpc.this[0].enable_dns_hostnames, "")
}

output "vpc_ipv6_association_id" {
  description = "ID of IPv6 association CIDR block"
  value       = try(aws_vpc.this[0].ipv6_association_id, "")
}

output "vpc_ipv6_cidr_block" {
  description = "IPv6 CIDR block"
  value       = try(aws_vpc.this[0].ipv6_cidr_block, "")
}

output "vpc_secondary_cidr_blocks" {
  description = "Secondary CIDR blocks of VPC"
  value       = aws_vpc_ipv4_cidr_block_association.this[*].cidr_block
}

output "vpc_owner_id" {
  description = " ID of AWS account that owns  VPC"
  value       = try(aws_vpc.this[0].owner_id, "")
}

output "private_subnets" {
  description = "ID of private subnets"
  value       = aws_subnet.private[*].id
}

output "private_subnet_arns" {
  description = "ARN of private subnets"
  value       = aws_subnet.private[*].arn
}

output "private_subnets_cidr_blocks" {
  description = "Cidr_blocks of private subnets"
  value       = aws_subnet.private[*].cidr_block
}

output "private_subnets_ipv6_cidr_blocks" {
  description = "IPv6 cidr_blocks of private subnets"
  value       = aws_subnet.private[*].ipv6_cidr_block
}

output "public_subnets" {
  description = "ID of public subnets"
  value       = aws_subnet.public[*].id
}

output "public_subnet_arns" {
  description = "ARN of public subnets"
  value       = aws_subnet.public[*].arn
}

output "public_subnets_cidr_blocks" {
  description = "Cidr_blocks of public subnets"
  value       = aws_subnet.public[*].cidr_block
}

output "public_subnets_ipv6_cidr_blocks" {
  description = "IPv6 cidr_blocks of public subnets"
  value       = aws_subnet.public[*].ipv6_cidr_block
}

output "database_subnets" {
  description = "ID of database subnets"
  value       = aws_subnet.database[*].id
}

output "database_subnet_arns" {
  description = "ARN of database subnets"
  value       = aws_subnet.database[*].arn
}

output "database_subnets_cidr_blocks" {
  description = "Cidr_blocks of database subnets"
  value       = aws_subnet.database[*].cidr_block
}

output "database_subnets_ipv6_cidr_blocks" {
  description = "IPv6 cidr_blocks of database subnets in an IPv6 enabled VPC"
  value       = aws_subnet.database[*].ipv6_cidr_block
}

output "database_subnet_group" {
  description = "ID of database subnet group"
  value       = try(aws_db_subnet_group.database[0].id, "")
}

output "database_subnet_group_name" {
  description = "Name of database subnet group"
  value       = try(aws_db_subnet_group.database[0].name, "")
}

output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = aws_route_table.public[*].id
}

output "private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = aws_route_table.private[*].id
}

output "database_route_table_ids" {
  description = "List of IDs of database route tables"
  value       = try(coalescelist(aws_route_table.database[*].id, aws_route_table.private[*].id), [])
}

output "public_internet_gateway_route_id" {
  description = "ID of  internet gateway route"
  value       = try(aws_route.public_internet_gateway[0].id, "")
}

output "public_internet_gateway_ipv6_route_id" {
  description = "ID of  IPv6 internet gateway route"
  value       = try(aws_route.public_internet_gateway_ipv6[0].id, "")
}

output "database_internet_gateway_route_id" {
  description = "ID of  database internet gateway route"
  value       = try(aws_route.database_internet_gateway[0].id, "")
}

output "database_nat_gateway_route_ids" {
  description = "List of IDs of  database nat gateway route"
  value       = aws_route.database_nat_gateway[*].id
}

output "database_ipv6_egress_route_id" {
  description = "ID of  database IPv6 egress route"
  value       = try(aws_route.database_ipv6_egress[0].id, "")
}

output "private_nat_gateway_route_ids" {
  description = "List of IDs of  private nat gateway route"
  value       = aws_route.private_nat_gateway[*].id
}

output "private_ipv6_egress_route_ids" {
  description = "List of IDs of  ipv6 egress route"
  value       = aws_route.private_ipv6_egress[*].id
}

output "private_route_table_association_ids" {
  description = "List of IDs of  private route table association"
  value       = aws_route_table_association.private[*].id
}

output "database_route_table_association_ids" {
  description = "List of IDs of  database route table association"
  value       = aws_route_table_association.database[*].id
}

output "public_route_table_association_ids" {
  description = "List of IDs of  public route table association"
  value       = aws_route_table_association.public[*].id
}

output "dhcp_options_id" {
  description = " ID of  DHCP options"
  value       = try(aws_vpc_dhcp_options.this[0].id, "")
}

output "nat_ids" {
  description = "List of allocation ID of Elastic IPs created for AWS NAT Gateway"
  value       = aws_eip.nat[*].id
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = var.reuse_nat_ips ? var.external_nat_ips : aws_eip.nat[*].public_ip
}

output "natgw_ids" {
  description = "List of NAT Gateway IDs"
  value       = aws_nat_gateway.this[*].id
}

output "igw_id" {
  description = " ID of  Internet Gateway"
  value       = try(aws_internet_gateway.this[0].id, "")
}

output "igw_arn" {
  description = " ARN of  Internet Gateway"
  value       = try(aws_internet_gateway.this[0].arn, "")
}

output "egress_only_internet_gateway_id" {
  description = " ID of  egress only Internet Gateway"
  value       = try(aws_egress_only_internet_gateway.this[0].id, "")
}

output "default_vpc_id" {
  description = " ID of  Default VPC"
  value       = try(aws_default_vpc.this[0].id, "")
}

output "default_vpc_arn" {
  description = " ARN of  Default VPC"
  value       = try(aws_default_vpc.this[0].arn, "")
}

output "default_vpc_cidr_block" {
  description = " CIDR block of  Default VPC"
  value       = try(aws_default_vpc.this[0].cidr_block, "")
}

output "default_vpc_default_security_group_id" {
  description = " ID of  security group created by default on Default VPC creation"
  value       = try(aws_default_vpc.this[0].default_security_group_id, "")
}

output "default_vpc_default_network_acl_id" {
  description = " ID of  default network ACL of  Default VPC"
  value       = try(aws_default_vpc.this[0].default_network_acl_id, "")
}

output "default_vpc_default_route_table_id" {
  description = " ID of  default route table of  Default VPC"
  value       = try(aws_default_vpc.this[0].default_route_table_id, "")
}

output "default_vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within Default VPC"
  value       = try(aws_default_vpc.this[0].instance_tenancy, "")
}

output "default_vpc_enable_dns_support" {
  description = "Wher or not  Default VPC has DNS support"
  value       = try(aws_default_vpc.this[0].enable_dns_support, "")
}

output "default_vpc_enable_dns_hostnames" {
  description = "Wher or not  Default VPC has DNS hostname support"
  value       = try(aws_default_vpc.this[0].enable_dns_hostnames, "")
}

output "default_vpc_main_route_table_id" {
  description = " ID of  main route table associated with  Default VPC"
  value       = try(aws_default_vpc.this[0].main_route_table_id, "")
}

output "public_network_acl_id" {
  description = "ID of  public network ACL"
  value       = try(aws_network_acl.public[0].id, "")
}

output "public_network_acl_arn" {
  description = "ARN of  public network ACL"
  value       = try(aws_network_acl.public[0].arn, "")
}

output "private_network_acl_id" {
  description = "ID of  private network ACL"
  value       = try(aws_network_acl.private[0].id, "")
}

output "private_network_acl_arn" {
  description = "ARN of  private network ACL"
  value       = try(aws_network_acl.private[0].arn, "")
}

output "database_network_acl_id" {
  description = "ID of  database network ACL"
  value       = try(aws_network_acl.database[0].id, "")
}

output "database_network_acl_arn" {
  description = "ARN of  database network ACL"
  value       = try(aws_network_acl.database[0].arn, "")
}

# Static values (arguments)
output "azs" {
  description = "A list of availability zones specified as argument to this module"
  value       = var.azs
}

output "name" {
  description = " name of VPC specified as argument to this module"
  value       = var.name
}