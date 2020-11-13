## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| command | Python command to execute | `list` | <pre>[<br>  "python",<br>  "--version"<br>]</pre> | no |
| home\_dir | A path mounted as the (readonly) home directory in the python container | `string` | `"~"` | no |
| host\_path | A path containing the project python input files (defaults to module root) | `any` | `null` | no |
| name | Docker container name | `string` | `"python"` | no |
| rm | Automatically remove container after execution | `bool` | `true` | no |
| working\_dir | Override the default working directory | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| container\_logs | Logs from container execution |
| exit\_code | Exit code of container |

