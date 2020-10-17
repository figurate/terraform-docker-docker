variable "bundle_install_dir" {
  description = "Local directory containing bundles to install"
  default = null
}

locals {
  volumes = var.bundle_install_dir != null ? [["/opt/sling/bundles", var.bundle_install_dir, true]] : []
}