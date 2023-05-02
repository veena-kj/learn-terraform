data "aws_security_group" "check" {
  name = "allow-all"
}
output "security_grp_ID" {
  value = data.aws_security_group.check
}