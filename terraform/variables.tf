variable ""aws_region"" {
  default = ""us-east-1""
}

variable ""ami_id"" {
  description = ""AMI ID to use for EC2 instance""
}

variable ""instance_type"" {
  default = ""t3.medium""
}

variable ""key_name"" {
  description = ""Key pair name for EC2""
}
