terraform {
  backend "s3" {}
}
resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type  = var.parameters[count.index].type
}
variable "parameters" {}
