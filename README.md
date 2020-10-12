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
| ports | A list of port mapping configurations | `list(tuple([string, number, number]))` | `[]` | no |
| rm | Automatically remove container after execution | `bool` | `false` | no |
| volumes | A list of volume mount configurations | `list(tuple([string, string, bool]))` | `[]` | no |
| working\_dir | Override the default working directory | `any` | `null` | no |

## Outputs

No output.

