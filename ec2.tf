module "catalogue"{
    source = "../terraform-aws-instance"
    # ami_id = "ami-09c813fb71547fc4f"
    # instance_type = "t3.micro"
    # sg_ids = ["sg-026125864f002d1cd"]

    ami_id = var.ami_id
    instance_type = var.instance_type
    sg_ids = var.sg_ids
    tags = {
        Name = "Modules-Demo"
    }
}

output "public_ip" {
    value = module.catalogue.public_ip
}

output "private_ip" {
    value = module.catalogue.private_ip
}   

output "instance_id" {
    value = module.catalogue.instance_id
}