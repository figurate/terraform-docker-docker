module "container" {
  source = "../.."

  name    = var.name
  image   = "gradle"
  command = concat(["gradle"], [var.command])
  rm      = var.rm

  volumes = [
    ["/root", pathexpand(var.home_dir), false],
    ["/home/gradle", var.host_path != null ? pathexpand(var.host_path) : path.root, false],
  ]
}
