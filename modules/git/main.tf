module "container" {
  source = "../.."

  name    = var.name
  image   = "alpine/git"
  command = concat([var.command])
  rm      = var.rm

  volumes = [
    ["/root", pathexpand(var.home_dir), true],
    ["/git", var.host_path != null ? pathexpand(var.host_path) : path.root, false],
  ]
}
