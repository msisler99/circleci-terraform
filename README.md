## Example of using Circleci and Terraform to create and maintain AWS resources when Infrastructure code is Committed to a specific GitHub repository.

## General process flow:
This repository is "linked" to a CircleCi project that monitors for GitHub commits. When an artifact is commited to the repository, CircleCi wakes up and performs the following steps:

- Downloads a docker image in which to run the Terraform commands.
- Downloads the contents of the GiHub repository to the docker image.
- Runs a Terraform "init" command to read/update the Terraform state file.
- Runs a Terraform "plan" command to show the proposed changes.
- Runs a Terraform "apply" command to apply the changes to the AWS environment.
- Exits and deletes the docker image when completed successfully.

## Dependenciesz:
- An AWS user with appropriate permissions needs to be created and the credentials placed in the CircleCi project.
- An AWS S3 bucket needs to be created to store Terraform state file.
- An AWS DynamoDB table needs to be created to maintain lock state for the Teraform state file.
- A circleCi project must be created that is linked to this repository.
- 
### Operating logic
This repository will need to be added to CircleCi as a project.
The CircleCi project needs to have the AWs credentails configured.

adding a list
- 1
- 2
