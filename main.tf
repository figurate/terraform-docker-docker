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
  name    = var.name
  image   = docker_image.container.latest
  command = var.command

  dynamic "volumes" {
    for_each = var.volumes
    content {
      container_path = volumes.key
      host_path      = volumes.value
      read_only      = true
    }
  }
}
