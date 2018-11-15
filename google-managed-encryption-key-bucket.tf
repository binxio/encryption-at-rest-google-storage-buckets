resource "google_storage_bucket" "with-google-managed-encryption-key" {
  name     = "gcp-managed-encryption-key-bucket-${data.google_project.current.number}"
  location = "EU"
}
