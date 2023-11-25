# resource "aws_s3_bucket" "example" {
#   bucket = "my-tf-test-bucket-asfdsfdsfdsdfds"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }

resource "aws_s3_bucket" "testing99" {
  bucket = "bucket36215487531"

  tags = {
    Name        = "Data Bucket"
    Environment = "Development"
  }
}
