## Init

```sh
cat <<EOF >>$HOME/.bash_secret
export TENCENTCLOUD_SECRET_ID=
export TENCENTCLOUD_SECRET_KEY=
EOF

terraform init
```

## Import

```
$ rm terraform.tfstate
$ terraform plan
Changes to Outputs:
  + cmd = "terraform import tencentcloud_dnspod_record.record {{ domain }}#{{ record_id }}"

$ terraform import tencentcloud_dnspod_record.record {{ domain }}#{{ record_id }}
```

## Update

Update record value in main.tf

```
$ terraform plan
$ terraform apply
```
