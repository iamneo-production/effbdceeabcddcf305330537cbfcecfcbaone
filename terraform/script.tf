# Define the provider and region
provider "aws" {
  region = "ap-northeast-1" # Tokyo region
  access_key=""
  secret_key=""
}

# Define the EC2 instance resource
resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu Server 20.04 AMI in Tokyo
  instance_type = "t2.micro"
}

# Output the Auto-Assigned Public-IP of the instance
output "public_ip" {
  value = aws_instance.my_instance.public_ip
}
