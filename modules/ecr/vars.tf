variable "name" {
  description = "Docker container name"
  default     = "ecr"
}

variable "command" {
  description = "ECR command to execute"
  default     = ["login"]
}

variable "rm" {
  description = "Automatically remove container after execution"
  default     = true
}
