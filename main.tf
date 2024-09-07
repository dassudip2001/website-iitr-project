# Create 2 EC2 instances using Terraform code


# Configure the AWS provider
provider "aws" {
  region = "ap-south-1"
}



# create ec2 instance
resource "aws_instance" "example1" {
  ami           = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.medium"
  tags = {
    Name = "terraform-example1"
  }
}

resource "aws_instance" "example2" {
  ami           = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.medium"
  tags = {
    Name = "terraform-example2"
  }

}
