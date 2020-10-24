variable "bundle_install_dirs" {
  description = "A list of local paths containing bundles to install (at specified start level)"
  type = list(tuple([string, number]))
  default = []
}

locals {
  volumes = [for d in var.bundle_install_dirs: ["/opt/sling/bundles/${d[1]}", d[0], true]]
}
