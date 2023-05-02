variable "fruits" {
  default = {
    apple = 100
    banana = 200
    grapes = 500
    oranges = 120
  }
}
resource "null_resource" "fruits" {
    for_each = var.fruits

  provisioner "local-exec" {
    command = "echo Fruits available are ${each.key} - ${each.value}"
   }
}
