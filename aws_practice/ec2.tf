resource "aws_instance" "myFirstInstance" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.launch-wizard-1.id]
  key_name = "ec2test"
  iam_instance_profile = "DemoRole"
  tags = {
    Name = "myFirstInstance"
  }
  user_data = <<EOF
    #!/bin/bash\n
    # Use this for your user data (script from top to bottom)\n
    # install httpd (Linux 2 version)\n
    yum update -y\n
    yum install -y httpd\n
    systemctl start httpd\n
    systemctl enable httpd\n
    echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html\n
    EOF
}
