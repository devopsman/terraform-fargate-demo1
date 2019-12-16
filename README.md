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
* ./scripts/run_tests.sh

You should see output similar to:
4 features (3 passed, 1 skipped)
14 scenarios (12 passed, 2 skipped)
41 steps (37 passed, 2 skipped)
Run 1576506078 finished within a moment

Note: This step does not require that Terraform Infrastructure to be deployed on AWS, it runs against Terraform code only.
