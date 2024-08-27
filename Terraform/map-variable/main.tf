output "user_data" {
    value = "my name is ${var.user_name} and my age is ${lookup(var.user_age,var.user_name)}"
}