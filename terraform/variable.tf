# variable "instance_type" {
#     type = string
#     default = "t2.micro"
# }

variable "instance_type" {
    type = map
    default={
        frontend= "t2.small"
        Backend="t2.small"
        DB="t2.micro"
        }
          
}

variable "instance_name" {
    type = list
    default = ["frontend", "backend","DB"]
  
}

variable "image_id" {
    type = string
    default = "ami-08b5b3a93ed654d19"
}

variable "sg_id" {
    type = string
    default = "sg-066492229622625dc"
}

