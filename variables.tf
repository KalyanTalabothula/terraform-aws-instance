

variable "ami_id" {     # observe I keep _ not - because reable purpose
    type = string
    default = "ami-09c813fb71547fc4f"  # <-- In our company following this only.
    description = "AMI Id of the Ec2 instance"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "instance size"

    validation {
        condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "Valid values for instance_type: instance_type are (t3.micro, t3.small, t3.medium)"
      }
}

# Use plural name if the returning value is a list

variable "sg_ids" {         # why I wrote id(s) means to understand its LIST ani.
    type = list     # <--- list because each project have separate sg. oka list lopala no of sg untaii
    
}

variable "tags" {
    type = map
}