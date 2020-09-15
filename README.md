# Docker Container

Purpose: Blueprints for Docker Containers

![Docker Container](docker\_container.png)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| docker | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| command | Optional list of command elements used to start the container | `list(string)` | `[]` | no |
| image | Docker container image | `any` | n/a | yes |
| name | Docker container name | `any` | n/a | yes |

## Outputs

No output.

