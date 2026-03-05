resource "aws_instance" "jenkin" {
  ami           = "ami-0b6c6ebed2801a5cb" # ami-id
  instance_type = "t2.micro"
  key_name      = "devops1.pem"

  user_data = <<-EOF
              #!/bin/bash
              yum install nginx -y
              systemctl start nginx
              systemctl enable nginx
              echo "Hello from Terraform" > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = "Jenkins-Terraform-Server"
  }
}i
