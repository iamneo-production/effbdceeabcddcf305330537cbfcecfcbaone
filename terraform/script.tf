# Define the provider and region
provider "aws" {
  region = "ap-northeast-1" # Tokyo region
  access_key="AKIAV4PYHDF5PADJN34L"
  secret_key="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"
}

# Define the EC2 instance resource
resource "aws_instance" "my_instance" {
  ami           = "ami-0ed99df77a82560e6" # Ubuntu Server 20.04 AMI in Tokyo
  instance_type = "t2.micro"
}

# Output the Auto-Assigned Public-IP of the instance
output "public_ip" {
  value = aws_instance.my_instance.public_ip
}
