module "container" {
  source = "../.."

  name    = var.name
  image   = "amazon/aws-cli"
  command = concat([var.command])
  rm      = var.rm

  volumes = {
    "/root/.aws" = pathexpand("~/.aws")
    "/aws"       = path.cwd
  }
}
