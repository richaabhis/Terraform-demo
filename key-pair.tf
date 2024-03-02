#Private Keys For Connecting Instance
resource "tls_private_key" "private_key_app" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "aws_key_pair" "jenkins" {
  key_name = "jenkins"
  public_key = tls_private_key.private_key_app.public_key_openssh
}

resource "local_file" "Web_Server_Keys" {
  content = tls_private_key.private_key_app.private_key_pem
  filename = "jenkins"
}