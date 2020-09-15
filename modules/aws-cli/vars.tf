variable "name" {
  description = "Docker container name"
  default     = "aws-cli"
}

variable "command" {
  description = "AWS command to execute"
  default     = "help"
}

variable "rm" {
  description = "Automatically remove container after execution"
  default     = true
}
