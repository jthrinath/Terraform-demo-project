# varables

variable REGION {
  type = string
  default = "ap-south-1"
}

variable EC2-AMI {

    type = string
    default = "ami-062df10d14676e201"
  
}

variable EC2-instance-type {
   type = string
   default = "t2.micro"
}

variable EC2-key-pair {
   type = string
   default = "linux-machine-on-aws-1"
}