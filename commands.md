# install
```bash
brew install terraform google-cloud-sdk git jq
```

# auth + project
```bash
gcloud auth login
gcloud auth application-default login
source .env
gcloud config set project $PROJECT_ID
gcloud services enable compute.googleapis.com
```

# init + apply
```bash
terraform init
terraform plan
terraform apply -auto-approve
```

# verify
```bash
gcloud compute networks describe tf-demo-net --format="table(name,subnetworks)"
```

# drift demo
```bash
gcloud compute networks subnets update tf-demo-subnet --region=us-central1 \
  --add-secondary-ranges=extra=10.20.0.0/24
terraform plan -refresh-only
```

# destroy
```bash
terraform destroy -auto-approve
```
