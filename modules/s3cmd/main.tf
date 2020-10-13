module "container" {
  source = "../.."

  name    = var.name
  image   = "schickling/s3cmd"
  command = concat([var.command])
  rm      = var.rm

  volumes = [
    ["/s3", var.host_path != null ? pathexpand(var.host_path) : path.cwd, true],
  ]
}
