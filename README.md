# Encryption at rest with Google Storage Buckets with customer managed keys
Google Storage Buckets is the service from Google to store unstructured data that can be accesses by a key. Data stored in a Google Storage Bucket is ultimately stored on a persistent disk. By default Google will encrypt this using a google managed encryption key. So data is always encrypted before it is stored and decrypted when reading it from the disk.  This terraform project creates both a bucket with a google managed key and a customer managed key for encryption.


## Install
to create the buckets, type:

```
GOOGLE_PROJECT=$(gcloud config get-value project)
terraform apply -auto-approve
```

to remove the buckets, type:

```
GOOGLE_PROJECT=$(gcloud config get-value project)
terraform destroy -force
```

Note that it will take 24 hours before the KMS key is actually deleted.
