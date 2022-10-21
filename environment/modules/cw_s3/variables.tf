variable "bucket_settings" {
  description = "Bucket settings"
  type = map(object({
    name               = string
    versioning_enabled = bool
    acl                = string
  }))
}