variable "name" {
  description = "Docker container name"
  default     = "git"
}

variable "command" {
  description = "Git command to execute"
  default     = "fetch"
}

variable "rm" {
  description = "Automatically remove container after execution"
  default     = true
}
