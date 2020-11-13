/**
 * # Docker Container
 *
 * Purpose: Blueprints for Docker Containers
 *
 * ![Docker Container](docker_container.png)
 */
resource "docker_image" "container" {
  name = var.image
}

resource "docker_container" "container" {
  name        = var.name
  image       = docker_image.container.latest
  command     = var.command
  working_dir = var.working_dir
  rm          = var.rm
  env         = var.env
  must_run    = false
  attach      = false

  dynamic "capabilities" {
    for_each = length(var.capabilities) > 0 ? [1] : []
    content {
      add = var.capabilities
    }
  }

  dynamic "volumes" {
    for_each = var.volumes
    content {
      container_path = volumes.value[0]
      host_path      = volumes.value[1]
      read_only      = volumes.value[2]
    }
  }

  dynamic "ports" {
    for_each = var.ports
    content {
      ip       = ports.value[0]
      external = ports.value[1]
      internal = ports.value[2]
    }
  }
}
