# learn-terraform

1.Variables
2.data source
3.resource
4.module
5.locals
6.provider
7.state files
8.loops
9.conditions

### Terraform variables precedence- priority

1. -var-file > automating the scripts - automatically it takes values from here, and it overrides the data if already there
 example: we have declared env in 2 files in demo.auto.tfvars and in prod.tfvars
it has taken value of env from demo.auto.tfvars, but if we want to modify env as prod.tfvars like below, it takes that and overrides the auto.tfvars value
terraform apply -var-file=prod.tfvars
because the first priority is for -var-file
2. *.auto.tfvars
3. terraform.tfvars
4. asks in cli to provide input.
 

