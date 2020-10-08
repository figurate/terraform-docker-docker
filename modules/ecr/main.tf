module "container" {
  source = "../.."

  name    = var.name
  image   = "figurate/ecr"
  command = var.command
  rm      = var.rm

  volumes = [
    ["/root/.aws", pathexpand("~/.aws"), true],
    ["/aws", path.cwd, true],
    ["/var/run/docker.sock", "/var/run/docker.sock", true],
  ]
}
