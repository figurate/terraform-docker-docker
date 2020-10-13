## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| command | Kubectl command to execute | `string` | `"help"` | no |
| host\_path | A writeable path containing the kubectl input files (defaults to module root) | `any` | `null` | no |
| kube\_config | A path mounted as the (readonly) directory containing Kubernetes configuration | `string` | `"~/.kube"` | no |
| name | Docker container name | `string` | `"kubectl"` | no |
| rm | Automatically remove container after execution | `bool` | `true` | no |

## Outputs

No output.

