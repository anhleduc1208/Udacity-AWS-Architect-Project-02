# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "AKIA5N444X76BVQ3GLU3"
  secret_key = "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"
  region     = "us-east-1"
}
# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2

resource "aws_instance" "udacity_t2" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = "t2.micro"
  count         = "0"
  tags = {
    Name = "Udacity T2"
    name = "Udacity T2"
  }
  subnet_id = "subnet-04de13cbdf4307ad5"
}
# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity_m4" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = "m4.large"
  count         = "2"
  tags = {
    Name = "Udacity M4"
    name = "Udacity M4"
  }
  subnet_id = "subnet-04de13cbdf4307ad5"
}
