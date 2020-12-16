resource "null_resource" "aws-cli-check" {
  provisioner "local-exec" {
    command = "aws --version"
  }
  triggers = {
    run_every_time = uuid()
  }
}
