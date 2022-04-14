# Docker Container

[![CI](https://github.com/figurate/terraform-docker-docker-container/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-docker-docker-container/actions/workflows/main.yml)

Purpose: Blueprints for Docker Containers

![Docker Container](docker\_container.png)

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| docker | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| docker | ~> 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| capabilities | Additional capabilities configuration | `set(string)` | `[]` | no |
| command | Optional list of command elements used to start the container | `list(string)` | `[]` | no |
| env | A set of environment overrides | `set(string)` | `[]` | no |
| image | Docker container image | `any` | n/a | yes |
| name | Docker container name | `any` | n/a | yes |
| ports | A list of port mapping configurations | `list(tuple([string, number, number]))` | `[]` | no |
| rm | Automatically remove container after execution | `bool` | `false` | no |
| volumes | A list of volume mount configurations | `list(tuple([string, string, bool]))` | `[]` | no |
| working\_dir | Override the default working directory | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| container\_logs | Logs from container execution |
| exit\_code | Exit code of container |

