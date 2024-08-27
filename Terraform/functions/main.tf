output "join" {
    value = "${join("-",var.users)}"
}

output "list" {
    value = "${var.users[1]}"
}

output "upper" {
    value = "${upper(var.users[0])}"
}

output "lower" {
    value = "${lower(var.users[1])}"
}