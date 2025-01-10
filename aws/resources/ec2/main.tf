data "aws_ami" "amazon_linx_2023" {
    most_recent = true
    
    filter {
      name = "image-id"
      values = [ "ami-0db575de70f37f380" ]
    }
}

data "aws_ami" "ubuntu_24" {
    most_recent = true
    
    filter {
      name = "name"
      values = [ "ami-0560690593473ded1" ]
    }
}

resource "aws_instance" "aws_instance_ec2" {
    ami = ""
    instance_type = "var.aws_instance_type_ec2"
}