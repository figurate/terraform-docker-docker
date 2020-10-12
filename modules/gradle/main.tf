module "container" {
  source = "../.."

  name    = var.name
  image   = "gradle"
  command = concat(["gradle"], [var.command])
  rm      = var.rm

  volumes = [
    ["/root", pathexpand("~"), true],
    ["/home/gradle", path.cwd, false],
  ]
}
