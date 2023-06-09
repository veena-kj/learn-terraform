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


variable "fruits1" {
  default = {
    watermelon ={
      name = "watermelon"
      count = 82
    }
    Strawberries ={
      name ="Strawberries"
      count = 75
    }
    sweetpotato = {
      name = "sweet-potato"
      count = 230
    }
  }

}
resource "null_resource" "fruits1" {
  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo fruits1 are available as below ${each.value["name"]} and ${each.value["count"]}"
  }
}