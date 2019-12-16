Deploy service with AWS Fargate using terraform

## Pre-requisites

You should have next things installed on your PC:
* awscli-v2 + configured credentials for any AWS Account
* terraform v0.12 or later
* [terraform-compliance](https://terraform-compliance.com) - used to run BDD tests against Terraform code

## Deploy

To deploy whole solution to AWS, clone this repo and run script:

./scripts/tf_deploy.sh


## Cleanup

To remove all Infrastructure(if was deployed in step #Deploy), run script:

./scripts/tf_cleanup.sh

## Run tests

To run BDD tests against provided Terraform code run commands:
* terraform plan -out=plan.out
* ./tests/compl/run_tests.sh

Note: This step does not require that Terraform Infrastructure to be deployed on AWS, it runs against Terraform code only.
