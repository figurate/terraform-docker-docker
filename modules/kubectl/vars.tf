variable "name" {
  description = "Docker container name"
  default     = "kubectl"
}

variable "command" {
  description = "Kubectl command to execute"
  default     = "help"
}

variable "rm" {
  description = "Automatically remove container after execution"
  default     = true
}
