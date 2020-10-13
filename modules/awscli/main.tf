module "container" {
  source = "../.."

  name    = var.name
  image   = "amazon/aws-cli"
  command = [var.command]
  rm      = var.rm

  volumes = [
    ["/root/.aws", pathexpand(var.aws_config), true],
    ["/aws", var.host_path != null ? pathexpand(var.host_path) : path.cwd, false]
  ]
}
