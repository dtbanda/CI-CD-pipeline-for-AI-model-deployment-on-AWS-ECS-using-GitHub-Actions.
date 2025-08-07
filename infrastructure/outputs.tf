output "ecr_repo_url" {
  value = aws_ecr_repository.llm_repo.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.llm_cluster.name
}

output "task_definition_arn" {
  value = aws_ecs_task_definition.llm_task.arn
}
