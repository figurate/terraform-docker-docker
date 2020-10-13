module "container" {
  source = "../.."

  name    = var.name
  image   = "hashicorp/packer:light"
  command = concat([var.command], local.var_file, local.vars, [var.template])
  rm      = var.rm

  volumes = [
    ["/packer", var.host_path != null ? pathexpand(var.host_path) : path.root, false],
  ]
}
