# ###################################################################################################### #
# Copyright (c) 2023 Oracle and/or its affiliates, All rights reserved.                                  #
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl. #
# ###################################################################################################### #

variable "workload_warning_topic_endpoints" {
  type        = list(string)
  default     = []
  description = "List of email addresses for Workload Warning notifications."
}

variable "workload_critical_topic_endpoints" {
  type        = list(string)
  default     = []
  description = "List of email addresses for Workload Critical notifications."
}

variable "enable_workload_critical_alarm" {
  type        = bool
  default     = false
  description = "Enable critical alarms in Workload compartment"
}

variable "enable_workload_warning_alarm" {
  type        = bool
  default     = false
  description = "Enable warning alarms in Workload compartment"
}