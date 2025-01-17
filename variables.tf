variable "servername"{
    description = "Name of the server"
    type = string
}

variable "subnet"{
    description = "subnet IP address space"
    type = string
}


variable "ami_ids" { 
    type = map
    description = "AMI ID's to deploy"

    default = {
        linux = "ami-00aa319b0f20192da"
        windows = "ami-0afb7a78e89642197"
    }
}

variable "disk" {
    description = "OS image to deploy"
    type = object({
        delete_on_termination = bool
        encrypted = bool
        volume_size = string
        volume_type = string
  })
} 

variable "os_type" {
    description = "OS to deploy, Linux or Windows"
    type = string
}

variable "instance_size" {
    description = "Size of the EC2 instance"
    type = string
    default = "t2.micro"
}