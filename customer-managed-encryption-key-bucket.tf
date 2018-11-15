resource "google_storage_bucket" "with-customer-encryption-key" {
  name     = "customer-managed-encryption-key-bucket-${data.google_project.current.number}"
  location = "EU"
  encryption {
    default_kms_key_name = "${google_kms_crypto_key.gcs.self_link}"
  }
}
