module "container" {
  source = "../.."

  name    = var.name
  image   = "bitnami/kubectl:latest"
  command = concat([var.command])
  rm      = var.rm

  volumes = [
    ["/root/.kube", pathexpand("~/.kube"), true],
    ["/kube", path.cwd, true],
  ]
}
