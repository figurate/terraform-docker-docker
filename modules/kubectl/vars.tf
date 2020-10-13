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

variable "kube_config" {
  description = "A path mounted as the (readonly) directory containing Kubernetes configuration"
  default     = "~/.kube"
}

variable "host_path" {
  description = "A writeable path containing the kubectl input files (defaults to module root)"
  default     = null
}
