resource "google_storage_bucket" "my_bucket01" {
  name          = "gt_at_bucket_001"
  project       = "hypnotic-epoch-411523"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"
}
resource "google_storage_bucket" "my_bucket02" {
  name          = "gt_at_bucket_002"
  project       = "hypnotic-epoch-411523"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"
}
resource "google_storage_bucket" "my_bucket03" {
  name          = "gt_at_bucket_003"
  project       = "hypnotic-epoch-411523"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"
}
