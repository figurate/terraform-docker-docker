locals {
  var_file = var.var_file != null ? ["--var-file", var.var_file] : []

  vars = length(var.vars) > 0 ? concat(["--var "], join("--var ", var.vars)) : []
}
