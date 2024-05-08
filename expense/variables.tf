
# ec2 variables
variable "image_id" {
    type= string
    default = "ami-090252cbe067a9e58"
    description= "RHEL9 AMI ID"
 
}

variable "instance_type" {
    type=string
    default = "t3.micro"  
}

variable "common_tags" {
    default = {
        project="Expense"
        Environment="Dev"
        Terraform = "true"
        # Module="DB"
        # Name="DB" #same name displayed
    }
  
}


# SG variables
variable "sg_name" {
    default = "allow_ssh"
  
}

variable "sg_description" {
    default = "allowing port 22"
  
}

variable "ssh_port" {
    type=number
    default = 22
  
}

variable "protocol" {
    default = "tcp"
  
}

variable "allowed_cidr" {
    type=list(string)
    default =  ["0.0.0.0/0"]  
}

variable "instance_names" {
    type=list 
    default = ["db","backend","frontend"]
  
}

#R53 variables
variable "zone_id" {
    default = "Z07723142N736V4HE6Z3C"
  
}

variable "domain_name" {
    default="daws78s-nnr.online"
  
}