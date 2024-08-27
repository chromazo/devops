variable "user_name" {
    type = string
}

variable "user_age" {
    type = number
}

output "user_data" {
    value = "Hi ${var.user_name}, your age is ${var.user_age}"
}