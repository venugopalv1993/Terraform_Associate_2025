
# Is Provider Block Mandatory in Terraform? - No
# Is provider is mandatory in terraform - Yes

# provider "aws" {
#   region = "us-east-1"
#   profile = "personal"
# }

# resource "aws_security_group" "name" {
#   name = "my-security-group"
# }

#------------------------------------------------------------------------------------

# Alias

# provider "aws" {
#   region  = "us-east-1"
#   profile = "personal"
#   alias   = "default"
# }

# provider "aws" {
#   region  = "ap-south-1"
#   profile = "personal"
#   alias   = "mumbai"
# }

# resource "aws_security_group" "name" {
#   name = "my-security-group"
#   provider = aws.mumbai

# }

#-------------------------------------------------------------------------------

#Command
/*

terraform init
terraform init -upgrade
terraform plan -out=tfplan
terraform fmt check
terraform fmt recursive  -- all files get formatted - irrespective of the directory
terraform validate  -- Terraform init is required before running this command
terraform state list , terraform state show, terraform state rm, terraform state pull,
terraform state push, terraform state mv

terraform tf-log
terraform tf_log_path

terraform import

To create a new workspace - like prod. dev. test  --------- multiple deployments
terraform workspace list	Lists all existing workspaces
terraform workspace show	Shows the current (active) workspace
terraform workspace new <name>	Creates a new workspace
terraform workspace select <name>	Switches to another workspace
terraform workspace delete <name>	Deletes a workspace
terraform workspace list	Lists all available workspaces


Terraform module
- s3 
- Local path   --- version part not supported
- git hub
- terraform registry
- http url

module "example" {
  source = "terraform-aws-modules/s3-bucket/aws"
}

terraform plan -var-file = "prod.tfvars"
terraform plan -var = "<variable_name>= <value>"

⚙️ Terraform Variable Precedence (Highest → Lowest)

1️⃣ Command-line flag (-var)
2️⃣ Environment variable (TF_VAR_name)
3️⃣ terraform.tfvars or *.auto.tfvars files
4️⃣ Default value in variable block

terraform apply -replace =<aws_instance.example> -force replace

terraform output outputvariablename


Splat Expression : [*] - Get all list elements


tearraform backend -- to store the state file
like - S3 
if nothing is present then it uses local 

terraform airgap : to have terraform without internet access



# TF_VAR_<variable_name>


# State command

terraform state list
terraform state show aws_instance.web
terraform state mv aws_instance.web aws_instance.app
terraform state rm aws_s3_bucket.old_logs
terraform state pull > backup.json
terraform state push backup.json

terraform force-unlock <LOCK_ID>


########################## LOG #############################################################

TF_LOG Levels

TRACE	Extremely detailed (shows every internal operation)
DEBUG	Debug-level messages, including API calls
INFO	High-level information messages
WARN	Only warnings
ERROR	Only errors

##############################################################################################

terraform get : The terraform get command is used to download modules 
from the module registry or a version control system, making them available for use in the configuration.

terraform show : displays the current Terraform state or a saved plan file in a human-readable format.


############################################################################
| Flag             | Description                                 | Example                                    |
| ---------------- | ------------------------------------------- | ------------------------------------------ |
| `-auto-approve`  | Skip the “yes” confirmation prompt          | `terraform apply -auto-approve`            |
| `-var`           | Pass a variable directly                    | `terraform apply -var="region=us-east-1"`  |
| `-var-file`      | Load variables from a file                  | `terraform apply -var-file=prod.tfvars`    |
| `-target`        | Apply only specific resources               | `terraform apply -target=aws_instance.web` |
| `-refresh=false` | Skip refreshing state before applying       | `terraform apply -refresh=false`           |
| `-parallelism=N` | Limit number of concurrent operations       | `terraform apply -parallelism=1`           |
| `-input=false`   | Disable interactive input (useful in CI/CD) | `terraform apply -input=false`             |

terraform apply -replace=aws_instance.web


# */






