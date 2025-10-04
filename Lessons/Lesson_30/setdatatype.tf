variable "set" {
    type = set(string)
    default = ["zalue11", "value2", "value3"]
}

output "name" {
  value = var.set
}


output "first_value_sorted" {
  value = sort(tolist(var.set))[0]
}
