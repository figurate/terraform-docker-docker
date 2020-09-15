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
}
