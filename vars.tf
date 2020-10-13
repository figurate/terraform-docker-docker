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

variable "working_dir" {
  description = "Override the default working directory"
  default     = null
}

variable "env" {
  description = "A set of environment overrides"
  type        = set(string)
  default     = []
}

variable "rm" {
  description = "Automatically remove container after execution"
  default     = false
}

variable "volumes" {
  description = "A list of volume mount configurations"
  type        = list(tuple([string, string, bool]))
  default     = []
}

variable "ports" {
  description = "A list of port mapping configurations"
  type        = list(tuple([string, number, number]))
  default     = []
}
