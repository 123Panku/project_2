provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "key11"
  public_key = file("C:/Users/Pankaja K M/Downloads/key11.pub")
}

resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"  # Ubuntu
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "DevOps-Web"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ../ansible/inventory.ini"
  }
}
