module "container" {
  source = "../.."

  name    = var.name
  image   = "bitnami/kubectl:latest"
  command = concat([var.command])
  rm      = var.rm
}
