variable "name" {
  description = "Docker container name"
}

variable "image" {
  description = "Docker container image"
}

variable "command" {
  description = "Optional list of command elements used to start the container"
  type        = list(string)
  default     = []
}

variable "rm" {
  description = "Automatically remove container after execution"
  default     = false
}