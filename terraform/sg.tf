resource "aws_security_group" "allow_ssh" {
    description = "allow all inbound traffic"
    name = "allow_all"

    ingress {
    to_port= 22
    from_port= 22
    protocol= "tcp"
    cidr_blocks=["0.0.0.0/0"]
    }
    
    egress  {
    to_port= 0
    from_port= 0
    protocol= "-1"
    cidr_blocks=["0.0.0.0/0"]
    }

    tags = {
      Name= "sg_id"
    }
}