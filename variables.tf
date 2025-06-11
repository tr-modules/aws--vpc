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