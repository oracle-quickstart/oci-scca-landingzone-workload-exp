# ###################################################################################################### #
# Copyright (c) 2023 Oracle and/or its affiliates, All rights reserved.                                  #
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl. #
# ###################################################################################################### #

variable "current_user_ocid" {
  type        = string
  description = "OCID of the current user"
}

variable "api_fingerprint" {
  type        = string
  description = "The fingerprint of API"
  default     = ""
}

variable "api_private_key_path" {
  type        = string
  description = "The local path to the API private key"
  default     = ""
}

variable "workload_vcn_cidr_block" {
  description = "Workload VCN CIDR Block"
  type        = string
  default     = "192.170.0.0/16"
}

variable "workload_vcn_dns_label" {
  description = "Workload Subnet DNS Label"
  type        = string
  default     = "wrkvcndns"
}

variable "workload_subnet_cidr" {
  description = "Workload Subnet CIDR Block"
  type        = string
  default     = "192.170.1.0/24"
}

variable "workload_subnet_dns_label" {
  description = "Workload Subnet DNS Label"
  type        = string
  default     = "wrkdns"
}

variable "workload_db_vcn_cidr_block" {
  description = "Workload DB VCN CIDR Block"
  type        = string
  default     = "192.171.0.0/16"
}

variable "workload_db_dns_label" {
  description = "Workload Database DNS Label"
  type        = string
  default     = "wrkdb"
}

variable "workload_db_subnet_cidr_block" {
  description = "Workload DB subnet CIDR Block"
  type        = string
  default     = "192.171.0.0/16"
}

variable "workload_db_subnet_dns_label" {
  description = "Workload Database Subnet DNS Label"
  type        = string
  default     = "dbsubnet"
}

variable "drg_id" {
  type = string
  validation {
    condition     = can(regex("^drg$", split(".", var.drg_id)[1]))
    error_message = "Only DRG OCID is allowed."
  }
}

variable "vdss_vcn_cidr_block" {
  description = "VDSS VCN CIDR Block"
  type        = string
}

variable "vdms_vcn_cidr_block" {
  description = "VDMS VCN CIDR Block"
  type        = string
}

variable "enable_workload_load_balancer" {
  type    = bool
  default = false
  validation {
    condition     = can(regex("^([t][r][u][e]|[f][a][l][s][e])$", var.enable_workload_load_balancer))
    error_message = "The enable_workload_load_balancer Flag variable must be either true or false."
  }
}

variable "enable_workload_vtap" {
  type    = bool
  default = false
  validation {
    condition     = can(regex("^([t][r][u][e]|[f][a][l][s][e])$", var.enable_workload_vtap))
    error_message = "The enable_workload_vtap Flag variable must be either true or false."
  }
}

variable "is_workload_vtap_enabled" {
  type    = bool
  default = false
}