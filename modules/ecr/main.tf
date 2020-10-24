module "container" {
  source = "../.."

  name    = var.name
  image   = "figurate/ecr"
  command = var.command
  rm      = var.rm

  env = ["AWS_DEFAULT_REGION=${var.aws_region}"]

  volumes = [
    ["/root/.aws", pathexpand(var.aws_config), true],
    ["/aws", var.host_path != null ? pathexpand(var.host_path) : path.cwd, false],
    ["/var/run/docker.sock", "/var/run/docker.sock", true],
  ]
}
