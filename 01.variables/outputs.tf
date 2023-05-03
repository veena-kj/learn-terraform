# To print in shell script we use echo , following is the syntax in shell
# echo $sample_string
output "sample_string" {
  value = var.sample_string
}
output sample {
  value=var.sample_string
}
output sample-1 {
  value= "value of sample string is ${var.sample_string}"
}

## In above case we are printing just variable, If variable is a combination of some strings then following is the syntax. ${} is mandatory if we include the variable inside a string

output "sample_string1" {
  value = "Value of sample_string = ${var.sample_string}"
}

## Values from list
# Second value in list
output "sample_list_2_accessing" {
  value = var.sample_list[1]
}

# Print number1 in sample_dict
output "sample_dict_num1_accessing" {
  value = var.sample_dict["number1"]
}

output "sample_dict_boolean_accessing" {
  value = var.sample_dict["boolean"]
}

output "env" {
  value = var.env
}

output "auto_num1" {
  value = var.auto_num1
}

output "sample1" {
  value = var.sample1
}
//output "ami_details" {
//  value = data.aws_ami.centos_ami.image_id
//}
//output "frontend" {
//  value=aws_instance.frontend.public_ip
//}
//output "frontendIP" {
//  value=aws_instance.frontend.private_ip
//}
