cd terraform/aws && terraform init && terraform plan -out=plan.out
terraform-compliance -p plan.out -f ../../tests/compl
