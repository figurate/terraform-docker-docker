module "container" {
  source = "../.."

  name    = var.name
  image   = "bitnami/kubectl:latest"
  command = concat([var.command])
  rm      = var.rm

  volumes = [
    ["/root/.kube", pathexpand(var.kube_config), true],
    ["/kube", var.host_path != null ? pathexpand(var.host_path) : path.cwd, false],
  ]
}
