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

variable "home_dir" {
  description = "A path mounted as the (readonly) home directory in the python container"
  default     = "~"
}

variable "host_path" {
  description = "A path containing the project python input files (defaults to module root)"
  default     = null
}
