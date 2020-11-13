output "exit_code" {
  description = "Exit code of container"
  value = module.container.exit_code
}

output "container_logs" {
  description = "Logs from container execution"
  value = module.container.container_logs
}
