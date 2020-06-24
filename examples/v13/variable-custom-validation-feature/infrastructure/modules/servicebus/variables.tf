variable "resource_group_name" {
    type = string
    
    validation {
        condition = length(var.resource_group_name) > 6
        error_message = "The Resource Group Name Must Be More Than 6 Characters."
    }
}

variable "name" {
}

variable "location" {
}