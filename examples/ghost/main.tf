module "container" {
  source = "../.."

  name  = "ghost"
  image = "ghost:latest"
  rm    = true

  ports = [
    ["localhost", 2368, 2368]
  ]
}
