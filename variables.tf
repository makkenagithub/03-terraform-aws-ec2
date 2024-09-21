# this is mandatorily supplied by user as default value is commneted
variable "ami_id" {
    type = string

    #default = "ami-09c813fb71547fc4f"
}

# this is optional as default alue exists. This can be overwrite by user.
# restrict the user to create instance of t3.micro or t3.medium or t3.small
variable "instance_type" {
    type = string
    default = "t3.micro"
    valication {
        condition = contains(["t3.micro", "t3.medium", "t3.small"], var.instance_type)
        error_message = "instance_type can only be ( t3.micro or t3.medium or t3.small)"
    }
}

# this is mandatory
variable "sg_id" {
    type = list(string)

}