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

  volumes = concat(local.volumes, [["/opt/sling/jmx_prometheus_javaagent-0.14.0.jar", "/Users/fortuna/Development/whistlepost/build/agent/jmx_prometheus_javaagent-0.14.0.jar", true], ["/opt/sling/prometheus.yml", "/Users/fortuna/Development/figurate/terraform-docker-docker-container/examples/apachesling/prometheus.yml", true]])
}
