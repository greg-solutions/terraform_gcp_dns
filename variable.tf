variable "name" {
  type = string
  description = "(Required) User assigned name for this resource. Must be unique within the project."
}
variable "dns_name" {
  type = string
  description = "(Required) The DNS name of this managed zone, for instance: example.com"
}
variable "networks" {
  type = list(string)
  default = []
  description = "(Required, if type private) The list of VPC networks that can see this zone."
}
variable "type" {
  type = string
  description = "(Required) The zone's types: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources. Must be one of: public, private"
}

variable "description" {
  type = string
  description = "(Optional) A textual description field. Defaults to 'Managed by Terraform'"
  default = null
}
variable "labels" {
  type = map(string)
  description = "(Optional) A set of key/value label pairs to assign to this ManagedZone"
  default = null
}