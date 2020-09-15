## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| command | Packer command to execute | `string` | `"build"` | no |
| name | Docker container name | `string` | `"packer"` | no |
| rm | Automatically remove container after execution | `bool` | `true` | no |
| template | Packer input template | `any` | n/a | yes |
| var\_file | Optional Packer var-file | `any` | `null` | no |
| vars | Map of input variables | `map` | `{}` | no |

## Outputs

No output.

