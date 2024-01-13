virginia:
    terraform workspace new virginia || terraform workspace select virginia
    terraform init
    terraform apply -var-file regions/virginia.tfvars --auto-approve

ohio:
    terraform workspace new ohio || terraform workspace select ohio
    terraform init
    terraform apply -var-file regions/ohio.tfvars --auto-approve

california:
    terraform workspace new california || terraform workspace select california 
    terraform init
    terraform apply -var-file regions/california.tfvars --auto-approve

virginia:
    terraform workspace new virginia || terraform workspace select virginia  
    terraform init
    terraform apply -var-file regions/virginia.tfvars --auto-approve

apply-all: oregon ohio california virginia

virginia-destroy:
    terraform workspace new virginia || terraform workspace select virginia
    terraform init
    terraform destroy -var-file regions/virginia.tfvars --auto-approve

ohio-destroy:
    terraform workspace new ohio || terraform workspace select ohio
    terraform init
    terraform destroy -var-file regions/ohio.tfvars --auto-approve

california-destroy:
    terraform workspace new california || terraform workspace select california 
    terraform init
    terraform destroy -var-file regions/california.tfvars --auto-approve

virginia-destroy:
    terraform workspace new virginia || terraform workspace select virginia  
    terraform init
    terraform destroy -var-file regions/virginia.tfvars --auto-approve

destroy-all: virginia-destroy ohio-destroy california-destroy oregon-destroy 
