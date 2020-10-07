module "container" {
  source = "../.."

  name  = "apachesling"
  image = "apache/sling:latest"
  rm    = true

  ports = [
    ["localhost", 8080, 8080]
  ]
}
