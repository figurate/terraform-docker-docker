## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| command | Git command to execute | `string` | `"fetch"` | no |
| home\_dir | A path mounted as the (writable) home directory in the gradle container | `string` | `"~"` | no |
| host\_path | A path containing the project gradle input files (defaults to module root) | `any` | `null` | no |
| name | Docker container name | `string` | `"git"` | no |
| rm | Automatically remove container after execution | `bool` | `true` | no |

## Outputs

No output.

