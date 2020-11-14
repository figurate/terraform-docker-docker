module "build" {
  source = "figurate/docker-container/docker//modules/gradle"

  host_path = abspath(path.root)
  command = "copyDeps"
}

module "container" {
  source = "../.."

  name  = "apachesling"
  image = "apache/sling:11"
  rm    = true
  env   = ["JAVA_OPTS=-Dsling.fileinstall.dir=/opt/sling/bundles -javaagent:./jmx_prometheus_javaagent-0.14.0.jar=9090:prometheus.yml"]

  ports = [
    ["localhost", 8080, 8080],
    ["localhost", 9090, 9090],
  ]

  volumes = concat(local.volumes, [["/opt/sling/jmx_prometheus_javaagent-0.14.0.jar", "${abspath(path.root)}/build/libs/jmx_prometheus_javaagent-0.14.0.jar", true], ["/opt/sling/prometheus.yml", "${abspath(path.root)}/prometheus.yml", true]])
  depends_on = [module.build]
}
