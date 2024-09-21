# this is mandatorily supplied by user as default value is commneted
variable "ami_id" {
    type = string

    #default = "ami-09c813fb71547fc4f"
}

# this is optional as default alue exists. This can be overwrite by user.
variable "instance_type" {
    type = string
    default = "t3.micro"
}

# this is mandatory
variable "sg_id" {
    type = list(string)

}