# variable "user_name" {
#     type = list
#     default = ["shiv","john"]
# }

variable "user_name" {
    type = string
}

variable "user_age" {
    type = map
    default = {
        shiv = 21
        john = 24
    }
}