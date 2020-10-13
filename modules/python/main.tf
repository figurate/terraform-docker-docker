module "container" {
  source = "../.."

  name        = var.name
  image       = "python"
  command     = var.command
  working_dir = var.working_dir
  rm          = var.rm

  volumes = [
    ["/root", pathexpand(var.home_dir), true],
    ["/work", var.host_path != null ? pathexpand(var.host_path) : path.cwd, false],
  ]
}
