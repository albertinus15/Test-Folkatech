output "vpc_id_exploration" {
  description = "Get of vpc_id"
  value       = module.vpc_exploration.vpc_id
}

output "private_subnets_list" {
  description = "List of private_subnets_list"
  value       = module.vpc_exploration.private_subnets
}

output "public_subnets_list" {
  description = "List of public_subnets_list"
  value       = module.vpc_exploration.public_subnets
}