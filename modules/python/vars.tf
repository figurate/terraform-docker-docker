variable "name" {
  description = "Docker container name"
  default     = "python"
}

variable "command" {
  description = "Python command to execute"
  default     = ["python", "--version"]
}

variable "working_dir" {
  description = "Override the default working directory"
  default     = null
}

variable "rm" {
  description = "Automatically remove container after execution"
  default     = true
}
