resource "aws_s3_bucket" "storage_service" {
  bucket = "my-photos-7410"
  force_destroy = true # all objects (including any locked objects) should be deleted from the bucket when the bucket is destroyed so that the bucket can be destroyed without error
  object_lock_enabled = true #Indicates whether this bucket has an Object Lock configuration enabled
  
  tags = {
    Name        = "web_images"
    Environment = "Dev"
  }
}
