resource "aws_instance" "firstinstance" {
	count= 2
	ami= "ami-0f511ead81ccde020"
	instance_type= "t2.micro"
	tags = {
	  Name = "instance-${count.index}"
	}
}

provider "aws" {
	access_key= "AKIAYL6XQNSO6E4B7IVQ"
	secret_key= "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"
	region= "ap-southeast-1"
}

