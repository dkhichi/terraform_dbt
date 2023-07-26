variable "account_id" {
  description = "account_id"
  default     = 184474
}

variable "project_id" {
  description = "project_id"
  default     = 269849
}

variable "environment_id" {
  description = "environment_id"
  type = list(number)
  default     = [ 218063, 218664, 218665]
}
