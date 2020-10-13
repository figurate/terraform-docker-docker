module "container" {
  source = "../.."

  name        = var.name
  image       = "python"
  command     = var.command
  working_dir = var.working_dir
  rm          = var.rm

  volumes = [
    ["/root", pathexpand("~"), true],
    ["/work", path.root, false],
  ]
}
