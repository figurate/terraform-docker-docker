module "container" {
  source = "../.."

  name    = var.name
  image   = "schickling/s3cmd"
  command = concat([var.command])
  rm      = var.rm
}
