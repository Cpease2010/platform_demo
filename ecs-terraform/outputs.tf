output "ecs_cluster_name" {
  description = "ECS Cluster Name"
  value       = aws_ecs_cluster.ecs_cluster.name
}

output "load_balancer_dns" {
  description = "DNS name of the load balancer"
  value       = aws_lb.ecs_lb.dns_name
}

output "public_subnets" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnets
}
