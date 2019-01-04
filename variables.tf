variable "aws_access_key"{
  default = ""
}
variable "aws_secret_key"{
  default = ""
}
variable "region"{
  description = ""
  default = "us-east-2"
}
variable "vpc_cidr" {
  default = "0.0.0.0/0"
}
variable "instance_tenancy" {
  default = "dedicated"
}
variable "name" {
  description = "Name to be used on all the resources as identifier"
  default     = "asc"
}
variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  default     = false
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  default     = true
}
variable "assign_generated_ipv6_cidr_block" {
  description = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block"
  default     = false
}
variable "create_vpc" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  default     = true
}
variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}
variable "vpc_tags" {
  description = "Additional tags for the VPC"
  default     = {}
}
variable "secondary_cidr_blocks" {
  description = "List of secondary CIDR blocks to associate with the VPC to extend the IP Address pool"
  default     = []
}
variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  default     = []
}

variable "database_subnets" {
  type        = "list"
  description = "A list of database subnets"
  default     = []
}
variable "single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  default     = false
}
variable "one_nat_gateway_per_az" {
  description = "Should be true if you want only one NAT Gateway per availability zone. Requires `var.azs` to be set, and the number of `public_subnets` created to be greater than or equal to the number of availability zones specified in `var.azs`."
  default     = false
}
variable "azs" {
  description = "A list of availability zones in the region"
  default     = []
}
variable "enable_dhcp_options" {
  description = "Should be true if you want to specify a DHCP options set with a custom domain name, DNS servers, NTP servers, netbios servers, and/or netbios server type"
  default     = false
}

variable "dhcp_options_domain_name" {
  description = "Specifies DNS name for DHCP options set"
  default     = ""
}

variable "dhcp_options_domain_name_servers" {
  description = "Specify a list of DNS server addresses for DHCP options set, default to AWS provided"
  type        = "list"
  default     = ["AmazonProvidedDNS"]
}

variable "dhcp_options_ntp_servers" {
  description = "Specify a list of NTP servers for DHCP options set"
  type        = "list"
  default     = []
}

variable "dhcp_options_netbios_name_servers" {
  description = "Specify a list of netbios servers for DHCP options set"
  type        = "list"
  default     = []
}

variable "dhcp_options_netbios_node_type" {
  description = "Specify netbios node_type for DHCP options set"
  default     = ""
}
variable "dhcp_options_tags" {
  description = "Additional tags for the DHCP option set"
  default     = {}
}
variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  default     = []
}
variable "igw_tags" {
  description = "Additional tags for the internet gateway"
  default     = {}
}

variable "public_subnet_tags" {
  description = "Additional tags for the public subnets"
  default     = {}
}

variable "private_subnet_tags" {
  description = "Additional tags for the private subnets"
  default     = {}
}
variable "map_public_ip_on_launch" {
  description = "Should be false if you do not want to auto-assign public IP on launch"
  default     = true
}
variable "database_subnet_tags" {
  description = "Additional tags for the database subnets"
  default     = {}
}

variable "database_subnet_group_tags" {
  description = "Additional tags for the database subnet group"
  default     = {}
}
variable "create_database_subnet_group" {
  description = "Controls if database subnet group should be created"
  default     = true
}

variable "public_route_table_tags" {
  description = "Additional tags for the public route tables"
  default     = {}
}
variable "create_database_subnet_route_table" {
  description = "Controls if separate route table for database should be created"
  default     = false
}
variable "database_route_table_tags" {
  description = "Additional tags for the database route tables"
  default     = {}
}
variable "create_database_internet_gateway_route" {
  description = "Controls if an internet gateway route for public database access should be created"
  default     = false
}
variable "intra_subnets" {
  type        = "list"
  description = "A list of intra subnets"
  default     = []
}
variable "intra_subnet_tags" {
  description = "Additional tags for the intra subnets"
  default     = {}
}
variable "reuse_nat_ips" {
  description = "Should be true if you don't want EIPs to be created for your NAT Gateways and will instead pass them in via the 'external_nat_ip_ids' variable"
  default     = false
}

variable "external_nat_ip_ids" {
  description = "List of EIP IDs to be assigned to the NAT Gateways (used in combination with reuse_nat_ips)"
  type        = "list"
  default     = []
}
variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  default     = false
}

variable "nat_gateway_tags" {
  description = "Additional tags for the NAT gateways"
  default     = {}
}
variable "nat_eip_tags" {
  description = "Additional tags for the NAT EIP"
  default     = {}
}
