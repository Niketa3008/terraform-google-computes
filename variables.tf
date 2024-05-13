variable "project_id" {
  type = string
  description = "The project id for putting the VM"
}

variable "zone" {
  type = string
  description = "The zone that the machine should be created in"
}

variable "name" {
  type = string
  description = "Name of the VM"
}

variable "tags" {
  type = list(string)
  description = "A list of network tags to attach to the instance"
}

variable "labels" {
  type = map(string)
  description = "A map of key/value label pairs to assign to the instance"
}

variable "metadata" {
  type = map(string)
  description = "Metadata key/value pairs to make available from within the instance"
}

variable "machine_type" {
  type = string
  description = "The machine Type of VM"
}

variable "deletion_protection" {
    type = bool
    description = "Enable/Disable deletion protection on the instance"
}

variable "image" {
  type = string
  description = "The image from which to initialize this disk"
}
variable "size" {
  type = string
  description = "The size of the image in gigabytes."
}

variable "attached_disk" {
  description     = "(Optional) Additional disks to attach to the instance."
  type            = list(object({
    source        = string
  }))
}

variable "network_interface" {
  description     = "List of network interfaces"
}

variable "service_account_email" {
  type = string
  description = "The service account e-mail address"
}

variable "service_account_scopes" {
  type = list(string)
  description = "A list of service scopes. Both OAuth2 URLs and gcloud short names are supported. To allow full access to all Cloud APIs, use the cloud-platform scope"
}
