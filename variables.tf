variable "AWS_ACCESS_KEY_ID" {
  description = "The AWS Access key"
  type        = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "The AWS Secret key"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "application_name" {
  description = "The name of the Elastic Beanstalk application"
  type        = string
}

variable "application_description" {
  description = "Description of the Elastic Beanstalk application"
  type        = string
}

variable "environment_name" {
  description = "The name of the Elastic Beanstalk environment"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "instance_subnets" {
  description = "List of subnet IDs for EC2 instances"
  type        = list(string)
}

variable "elb_subnets" {
  description = "List of subnet IDs for the load balancer"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type for Elastic Beanstalk environment"
  type        = string
}

variable "min_instance_count" {
  description = "Minimum number of instances in the Auto Scaling group"
  type        = number
}

variable "max_instance_count" {
  description = "Maximum number of instances in the Auto Scaling group"
  type        = number
}

variable "eb_instance_profile" {
  description = "The IAM instance profile for the Elastic Beanstalk EC2 instances"
  type        = string
}

variable "security_groups" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "artifact_bucket_name" {
  description = "Name of the S3 bucket to store pipeline artifacts"
  type        = string
}

variable "pipeline_name" {
  description = "Name of the CodePipeline"
  type        = string
}

variable "bitbucket_repo" {
  description = "Name of the Bitbucket repository"
  type        = string
}

variable "bitbucket_branch" {
  description = "Branch name in the Bitbucket repository"
  type        = string
}

variable "eb_service_role" {
  description = "The IAM service role for Elastic Beanstalk"
  type        = string
}

variable "codepipeline_role_arn" {
  description = "The ARN of the IAM role for CodePipeline"
  type        = string
}

variable "bitbucket_connection_arn" {
  description = "The ARN of the CodeStar connection to Bitbucket"
  type        = string
}

variable "api_environment_variables" {
  description = "A map of environment variables for the API"
  type        = map(string)
  default     = {}
}