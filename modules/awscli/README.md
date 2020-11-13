## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_config | A path mounted as the (readonly) directory containing AWS config | `string` | `"~/.aws"` | no |
| command | AWS command to execute | `string` | `"help"` | no |
| host\_path | A writeable path containing the project AWS input files (defaults to module root) | `any` | `null` | no |
| name | Docker container name | `string` | `"awscli"` | no |
| rm | Automatically remove container after execution | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| container\_logs | Logs from container execution |
| exit\_code | Exit code of container |

