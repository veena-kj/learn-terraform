variable "sample_string" {
  default = "hello world"
}

output sample {
  value=var.sample_string
}
output sample-1 {
  value= "value of sample string is ${var.sample_string}"
}
#shell scripting Sample_string = "hello world"
#to print in shell script we use echo.
# echo sample_string

variable "sample_number" {
  default = 100
  }
# 10.6 is also a number in terraform
variable "sample_boolean" {
  default = true
}
## Booleans are true or false
# Booleans and numbers does not need to be quoted, Only strings need to be quoted that to be with double quotes. Terraform does support for Single quotes.
### Variable Types
# So far we have seen is default variable type
# We have list variable type , Meaning single variable can hold multiple values\
variable "sample_list" {
  default = [
    100,
    "hello",
    true,
    123
  ]
 }
## Data type inside the list does not matter in terraform
# We have a dictionary (or map), Meaning single variable will  have multiple values, & Each value is going to have a saperate name.
variable "sample_dict" {
  default = {
    number1 = 100
    string1 = "hello"
    number2 = 123
    boolean = true
  }
}
## This is the most preferred variable over the list when we declare the data.

variable "env"{}
variable "auto_num1" {}
variable "sample1" {}