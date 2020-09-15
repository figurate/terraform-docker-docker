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
