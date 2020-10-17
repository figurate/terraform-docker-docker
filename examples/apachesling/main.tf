module "container" {
  source = "../.."

  name  = "apachesling"
  image = "apache/sling:latest"
  rm    = true
  env = ["JAVA_OPTS=-Dsling.fileinstall.dir=/opt/sling/bundles"]

  ports = [
    ["localhost", 8080, 8080]
  ]

  volumes = local.volumes
}
