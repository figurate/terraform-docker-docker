/**
 * S3-compatible object storage cluster.
 * https://github.com/minio/minio
 */
module "container" {
  source = "../.."

  name    = "minio"
  image   = "minio/minio"
  command = ["server", "/data"]

  env = [
    "MINIO_ACCESS_KEY=${var.minio_access_key}",
    "MINIO_SECRET_KEY=${var.minio_secret_key}"
  ]

  ports = [
    ["localhost", 9000, 9000]
  ]

  volumes = [
    ["/data", path.cwd, false]
  ]
}
