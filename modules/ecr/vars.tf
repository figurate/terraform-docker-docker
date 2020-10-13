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

variable "aws_config" {
  description = "A path mounted as the (readonly) directory containing AWS credentials"
  default     = "~/.aws"
}

variable "host_path" {
  description = "A writeable path containing the project AWS input files (defaults to module root)"
  default     = null
}
