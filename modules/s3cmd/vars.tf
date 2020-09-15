variable "name" {
  description = "Docker container name"
  default     = "s3cmd"
}

variable "command" {
  description = "S3cmd command to execute"
  default     = "help"
}

variable "rm" {
  description = "Automatically remove container after execution"
  default     = true
}
