variable "aws_region" {
  default = "eu-north-1"
}

variable "public_key_path" {
  description = "Path to your local public SSH key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "ecr_repo_name" {
  description = "ECR repository name"
  default     = "my-llm-api-repo"
}

variable "ecs_cluster_name" {
  description = "ECS Cluster name"
  default     = "llm-cluster"
}

variable "task_name" {
  description = "ECS Task Definition name"
  default     = "llm-task"
}

variable "container_name" {
  description = "Container name"
  default     = "llm-api-container"
}
