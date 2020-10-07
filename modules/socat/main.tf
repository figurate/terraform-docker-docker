module "container" {
  source = "../.."

  name    = "socat"
  image   = "bobrik/socat"
  command = ["TCP-LISTEN:2375,fork", "UNIX-CONNECT:/var/run/docker.sock"]
  rm      = true

  volumes = [
    ["/var/run/docker.sock", "/var/run/docker.sock", true]
  ]

  ports = [
    ["127.0.0.1", 2375, 2375]
  ]
}
