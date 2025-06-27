variable "vpc_cidr" {
  description = "vpc cidr range"
  type        = string
  default     = "10.0.0.0/16"
}

variable "project_name" {
  description = "The project name"
  type        = string
  default     = null
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones to create subnets in"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnets cidr"
  default     = []
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets cidr"
  default     = []
}

variable "create_nat_gateway" {
  type        = bool
  description = "specify whether to create a nat gateway for the private subnets"
  default     = false
}

