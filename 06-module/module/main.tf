resource "null_resource" "nothing1" {
  provisioner "local-exec" {
    command = "echo Hello from module - input - ${var.input}"

  }
}
variable "input" {}