variable "root_token" {
  description = "Vault root token id"
}

variable "listen_port" {
  description = "Vault listen port"
  type = number
  default = 8200
}
