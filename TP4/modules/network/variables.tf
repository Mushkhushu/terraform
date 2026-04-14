variable "student_name" { 
    type = string
}
variable "vpc_cidr" {
    type = string
    default = "10.10.0.0/16"
}
variable "environment" {
    type = string
    default = "dev"
}
variable "subnets" {
    type = map(object({
        cidr_block = string
        az = string
        public = bool
    }))
    default = {
        public = { 
            cidr_block = "10.10.1.0/24"
            az = "us-east-1a", 
            public = true }
        private = { 
            cidr_block = "10.10.2.0/24"
            az = "us-east-1b", 
            public = false }
    }
}