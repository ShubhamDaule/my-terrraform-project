variable "user_number" {
  type = number
  default = "123456"
}

variable "elbname" {
  type = string
  default = "shubham"
}

variable "az" {
  type = list
}

variable "timeout" {
  type = number
}


variable "ami" {
  type = list 
  default = ["ami-123", "ami-456", "ami-789"]
  
}

variable "instance_type" {
  type = map 
  default = {
    us-east-1 = "t2.nano"
    us-west-1 = "t2.medium"
    us-south-1 = "t2.large"
  }
}