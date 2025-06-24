variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "zone_id" {
    default = "Z05476892IBG9W47WAZ1Z"
  
}

variable "domain_name" {
  default = "vrushaba.shop "
  
}