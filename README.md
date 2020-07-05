# awsome-app-infra

tf init
Create IAM user (terraform)
     AdministratorAccess - should be replaced with min required policies
aws configure
Create vpc and subnet
eks requires 2 subnets on 2 different AZ
Fix hardcoded subnet CIDR string

Commands:
    tf init
    tf apply -auto-approve -var-file=toluna.tfvars
    tf destroy -auto-approve -var-file=toluna.tfvars

Handle TF state

Handle TF output