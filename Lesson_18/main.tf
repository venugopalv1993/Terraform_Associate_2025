

resource "local_file" "foo" {
  content  = "password"
  filename = "${path.module}/foo.bar"
}



resource "local_sensitive_file" "foo" {
  content  = "password!"
  filename = "${path.module}/foo1.bar"
}

output "name" {
  value = local_sensitive_file.foo.content
  sensitive = true
}

output "name2" {
  value = local_file.foo.content
}