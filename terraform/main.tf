variable "domain" {
    type = string
}

variable "subdomain" {
    type = string
}

provider "tencentcloud" {
  # TENCENTCLOUD_SECRET_ID
  # TENCENTCLOUD_SECRET_KEY
  region     = "ap-guangzhou"
}

data "tencentcloud_dnspod_records" "record" {
  domain    = var.domain
  subdomain = var.subdomain
}

output "cmd" {
    value = "terraform import tencentcloud_dnspod_record.record ${var.domain}#${data.tencentcloud_dnspod_records.record.result[0].record_id}"
}

# resource "terraform_data" "cluster" {
#     provisioner "local-exec" {
#         command = "terraform import tencentcloud_dnspod_record.record ${var.domain}#${data.tencentcloud_dnspod_records.record.result[0].record_id}"
#     }
# }

resource "tencentcloud_dnspod_record"  "record" {
    domain = var.domain
    sub_domain = var.subdomain
    value = data.tencentcloud_dnspod_records.record.result[0].value
    record_type = data.tencentcloud_dnspod_records.record.result[0].type
    record_line = data.tencentcloud_dnspod_records.record.result[0].line
}
