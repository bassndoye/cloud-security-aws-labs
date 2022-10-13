variable "vpc_id" {
  type = string
}
variable "random_id" {
  type = string
}
data "aws_availability_zones" "available" {
  state = "available"
}
