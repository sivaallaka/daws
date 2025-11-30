resource "aws_instance" "test" {

    # instance_type = var.instance_type
    #for_each = var.instance_type
    #count = length(var.instance_name)
    for_each = var.instance_type
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    #instance_type = var.instance_name[count.index] == "DB" ? "t2.small" : "t2.micro"
    instance_type = each.value
    tags = {
        #Name = var.instance_name[count.index]
        Name= each.key
    }
}