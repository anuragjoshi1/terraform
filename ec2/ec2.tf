resource "aws_instance" "myec2" {
  instance_type   = var.itype
  security_groups = ["launch-wizard-2"]
  key_name        = "Anurag"
  ami             = "ami-00399ec92321828f5"
  tags = {
    name = "var.name"
  }

}
