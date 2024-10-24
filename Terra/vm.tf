
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners = ["099720109477"]  

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*64-ebs"]
  }

  filter {
        name   = "virtualization-type"
        values = ["hvm"]
  }
  

}


resource "aws_instance" "my_vm" {
 ami           = data.aws_ami.amazon_linux.id
 instance_type = var.instance_type

 tags = {
   Name = var.name_tag,
 }
}