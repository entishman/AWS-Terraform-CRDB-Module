output "join_string" {
  description = "the CockroachDB private IP join string"
  value = local.join_string
}

# output "join_string_public" {
#   description = "the CockroachDB public IP join string"
#   value = local.join_string_public
# }

# output "tls_private_key" {
#   description = "tls_private_key.crdb_ca_keys.private_key_pem -> ca.key / TLS Private Key PEM"
#   value = local.tls_private_key
#   sensitive = true
# }

# output "tls_public_key" {
#   description = "tls_private_key.crdb_ca_keys.public_key_pem -> ca.pub / TLS Public Key PEM"
#   value = local.tls_public_key
# }

# output "tls_cert" {
#   description = "tls_self_signed_cert.crdb_ca_cert.cert_pem -> ca.crt / TLS Cert PEM  /  Duplicate of tls_cert for better naming"
#   value = local.tls_cert
# }

# output "tls_user_cert" {
#   description = "tls_locally_signed_cert.user_cert.cert_pem -> client.name.crt"
#   value = local.tls_user_cert
# }

# output "tls_user_key" {
#   description = "tls_private_key.client_keys.private_key_pem -> client.name.key"
#   value = local.tls_user_key
#   sensitive = true
# }

output "subnets-1" {
  description = "Subnets"
  value = local.subnet_list[*]
}
output "subnets-2" {
  description = "Subnets"
  value = local.subnet_list[1]
}

output "private_subnet_list-3" {
  description = "private subnets"
  value = local.private_subnet_list
}

output "public_subnet_list-4" {
  description = "public subnets"
  value = local.public_subnet_list
}

output "availability_zones-5" {
  description = "availability zones"
  value = data.aws_availability_zones.available.names
  #value = available.names
}

output "availability_zone_list-6" {
  description = "availability zone list"
  value = local.availability_zone_list
}

output "network_interfaces-7" {
  description = "List of network interfaces"
  value       = aws_network_interface.crdb[*].private_ip
}

output "haproxy_ip-8" {
  description = "HA Proxy Private IP"
  value       = aws_network_interface.haproxy[0].private_ip
}

output "vpc_id-9" {
  description = "ID of the VPC created by the module"
  value       = aws_vpc.main.id
}

output "route_table_public_id-10" {
  description = "ID of the public route table"
  value = aws_route_table.public_route_table.id
}

output "route_table_private_id-11" {
  description = "ID of the private route table"
  value = aws_route_table.private_route_table.id
}

output "security_group_intra_node_id-12" {
  description = "ID of the security group allowing intra-node communication"
  value = module.security-group-02.security_group_id
}

output "security_group_external_access_id-13" {
  description = "ID of the security group allowing communication external to the VPC"
  value = module.security-group-01.security_group_id
}

output "subnet_list-14" {
  description = "list of subnets"
  value = local.subnet_list
}
