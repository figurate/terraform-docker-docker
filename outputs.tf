output "exit_code" {
  description = "Exit code of container"
  value       = docker_container.container.exit_code
}

output "container_logs" {
  description = "Logs from container execution"
  value       = docker_container.container.container_logs
}
