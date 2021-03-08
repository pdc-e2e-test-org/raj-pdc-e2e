
# Goat.tf version 0.4000609029222859
resource "aws_s3_bucket" "flowbucket" {
bucket        = "${local.resource_prefix.value}-flowlogs"
force_destroy = true
tags = {
Name        = "${local.resource_prefix.value}-flowlogs"
Environment = local.resource_prefix.value
}
logging {
target_bucket = "${aws_s3_bucket.logs.id}"
target_prefix = "log/flowbucket"
}
}
