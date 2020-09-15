module "container" {
  source = "../.."

  name    = var.name
  image   = "alpine/git"
  command = concat([var.command])
  rm      = var.rm
}
