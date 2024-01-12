variable "resource_group_name" {
  type        = string
  description = "resource group name"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "storage_account_name" {
  type        = string
  description = "storage account name"
}

# To create 3 resource group or resources for different environment. give count 3 and pass name as var.resource_group[count.index]
/* variable "resource_group" {
  type = list
  default = ["dev", "stage", "prod"]
}

# To create dynamic block for security group
/*variable "sg_port" {
  type = list(number)
  description = "list of ingress ports"
  default = [8200, 8301, 7376,]
}
*/