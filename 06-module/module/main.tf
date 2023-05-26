resource "null_resource" "nothing1" {
  provisioner "local-exec" {
    command = "echo Hello from module = $(var.input)"
  }
}
resource "null_resource" "nothing2" {
  provisioner "local-exec" {
    command = "echo Hello from module"
  }
}
resource "null_resource" "nothing3" {
  provisioner "local-exec" {
    command = "echo Hello from module"
  }
}
variable "input" {}