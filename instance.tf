module "VPC" {
    source = C:\terraform-class\VPC
    variable "subnet_id "{
    }
}

resource "aws_instance" "demo5" {
    ami = "ami-04902260ca3d33422"
    instance_type = "t2.micro"
    key_name = "myfirstkey"
    subnet_id = element(module.VPC.vpc-main-private1)
        tags = {
        name = "demo5"
    }

}
