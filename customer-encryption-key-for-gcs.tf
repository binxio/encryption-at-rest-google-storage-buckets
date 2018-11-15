resource "google_kms_crypto_key" "gcs" {
  name            = "gcs-key"
  key_ring        = "${google_kms_key_ring.gcs.self_link}"
  rotation_period = "86401s"
}

resource "google_kms_key_ring" "gcs" {
  name     = "gcs-key"
  location = "global"
}

#
# grant KMS Encrypter Decryptor permissions to the Google Storage Service
#
resource "google_project_iam_member" "grant-google-storage-service-encrypt-decrypt" {
  role   = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
  member = "serviceAccount:service-${data.google_project.current.number}@gs-project-accounts.iam.gserviceaccount.com"
}
