/***** Common *****/

variable "aws_region" {
  type        = string
  description = "AWS region. Must match region of vpc_id and public_subnet_ids."
}

variable "acm_certificate_arn" {
  type        = string
  description = "ARN of ACM SSL certificate"
}

variable "base_namespace" {
  type        = string
  description = "Base namespace"
}

variable "cohort" {
  type        = number
  description = "Cohort number used for namespacing"
}

variable "default_tags" {
  type        = map(any)
  description = "Tags"
}

variable "deployments" {
  type        = number
  description = "Number of deployments of the module"
}

variable "domain_name" {
  type        = string
  description = "Domain name for ACM SSL certificate. Including TLD."
}

variable "ecs_cluster_name" {
  type        = string
  description = "Name of ECS cluster"
}

variable "eth_network" {
  type        = map(string)
  description = "Ethereum network"
  default = {
    dev  = "ropsten"
    tnet = "ropsten"
    prod = "mainnet"
  }
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "image_tag" {
  type        = string
  description = "Image tag"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of private subnet ids for the VPC"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of ALB subnet ids"
}

variable "s3_bucket_name" {
  type        = string
  description = "Name of S3 bucket to use as a backend for Ceramic and IPFS"
}

variable "vpc_id" {
  type        = string
  description = "Id of VPC"
}

variable "vpc_cidr_block" {
  type        = string
  description = "Default CIDR block of the VPC"
}

variable "vpc_security_group_id" {
  type        = string
  description = "VPC security group id"
}

/***** Ceramic *****/

variable "ceramic_anchor_service_api_url" {
  type        = string
  description = "URL for Ceramic Anchor Service API"
}

variable "ceramic_cors_allowed_origins" {
  type        = string
  description = "Web browser CORS allowed origins"
}

variable "ceramic_cpu" {
  type        = number
  description = "vCPU units to allocate to the Ceramic daemon ECS task"
  default     = 1024 # 1024 = 1 vCPU
}

variable "ceramic_env" {
  type        = string
  description = "Optional. Environment namespace for Ceramic"
  default     = ""
}

variable "ceramic_eth_rpc_url" {
  type        = string
  description = "Ethereum RPC URL. Must match anchor service ETH network"
}

variable "ceramic_efs_logs_fs_id" {
  type        = string
  description = "ID of EFS volume for Ceramic logs"
}

variable "ceramic_efs_logs_fs_name" {
  type        = string
  description = "Name of EFS volume for Ceramic logs"
}

variable "ceramic_memory" {
  type        = number
  description = "Memory allocation per Ceramic daemon ECS task"
  default     = 2048 # 2048 = 2 GB
}

variable "ceramic_network" {
  type        = string
  description = "Ceramic network"
}

variable "ceramic_task_count" {
  type        = number
  description = "Number of Ceramic ECS tasks to run in the ECS service"
  default     = 1
}

/***** IPFS *****/

variable "ipfs_ceramic_network" {
  type        = string
  description = "Ceramic network to pass to IPFS"
  default     = ""
}

variable "ipfs_cpu" {
  type        = number
  description = "vCPU units to allocate to the IPFS ECS task"
  default     = 1024 # 1024 = 1 vCPU
}

variable "ipfs_debug_env_var" {
  type        = string
  description = "Value of DEBUG env var"
}

variable "ipfs_memory" {
  type        = number
  description = "Memory allocation per IPFS API instance"
  default     = 8192
}

variable "ipfs_task_count" {
  type        = number
  description = "Number of IPFS ECS tasks to run in the ECS service"
  default     = 1
}
