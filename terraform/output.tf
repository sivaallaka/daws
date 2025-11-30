
output "sg_id" {
    value = aws_security_group.allow_ssh.id
}

output "engress" {
    value = aws_security_group.allow_ssh.ingress
}