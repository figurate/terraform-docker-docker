variable "name" {
  description = "Docker container name"
  default     = "packer"
}

variable "command" {
  description = "Packer command to execute"
  default     = "build"
}

variable "template" {
  description = "Packer input template"
}

variable "var_file" {
  description = "Optional Packer var-file"
  default     = null
}

variable "vars" {
  description = "Map of input variables"
  default     = {}
}

variable "rm" {
  description = "Automatically remove container after execution"
  default     = true
}

variable "host_path" {
  description = "A writeable path containing the packer input files (defaults to module root)"
  default     = null
}
