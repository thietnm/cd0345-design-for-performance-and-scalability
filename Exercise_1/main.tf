# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  profile = "default"
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count = "4"
  ami = "ami-0ed6534c7d6a8e78f"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
#  resource "aws_instance" "Udacity_M4" {
#    count = "2"
#    ami = "ami-0ed6534c7d6a8e78f"
#    instance_type = "m4.large"
#    tags = {
#     Name = "Udacity M4"
#   }
# }