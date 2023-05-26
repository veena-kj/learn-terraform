resource "null_resource" "nothing1" {
  provioner "local-exec" {
    command = "echo Hello from module = $(var.input)"
  }
}
resource "null_resource" "nothing2" {
  provioner "local-exec" {
    command = "echo Hello from module"
  }
}
resource "null_resource" "nothing3" {
  provioner "local-exec" {
    command = "echo Hello from module"
  }
}
variable "input" {}