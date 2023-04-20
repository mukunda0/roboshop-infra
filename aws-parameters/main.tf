resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type = var.parameters[count.index].type
  value  = var.parameters[count.index].value
}
variable "parameters" {}
resource "aws_ssm_parameter" "screct" {
  count = length(var.scrects)
  name  = var.scrects[count.index].name
  type = var.scrects[count.index].type
  value  = var.scrects[count.index].value
}
variable "scrects" {}
