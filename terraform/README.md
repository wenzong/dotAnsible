```sh
cat << EOF > versions.tf
terraform {
  required_providers {
    tencentcloud = {
      source = "tencentcloudstack/tencentcloud"
    }
  }
}
EOF

cat << EOF > main.tf
provider "tencentcloud" {
  # TENCENTCLOUD_SECRET_ID
  # TENCENTCLOUD_SECRET_KEY
  region     = "ap-guangzhou"
}
EOF

cat <<EOF >>$HOME/.bash_secret
export TENCENTCLOUD_SECRET_ID=
export TENCENTCLOUD_SECRET_KEY=
EOF

terraform init
```
