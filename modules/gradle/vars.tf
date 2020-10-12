variable "name" {
  description = "Docker container name"
  default     = "gradle"
}

variable "command" {
  description = "Gradle command to execute"
  default     = "build"
}

variable "rm" {
  description = "Automatically remove container after execution"
  default     = true
}
