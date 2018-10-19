## Example of using Circleci and Terraform to create and maintain AWS resources when code is Committed to a specific GitHub repository.

## General flow;
This repository is "linked" to a CircleCi project that monitors for GitHub commits. When an artifact is commited to the repository, CircleCi wakes up and performs the following steps:

- Downloads a docker image in which to run the Terraform commands.
- Downloads the contents of the GiHub repository to the docker image.
- Runs a Terraform "init" command to read/update the Terraform state file.
- Runs a Terraform "plan" command to show the proposed changes.
- Runs a Terraform "apply" command to apply the changes ot the AWS environment.
- Exits and deletes the docker image when completed successfully.

## Dependenciesz:
- An AWS user with appropriate permissions needs to be created in order to use for this project.
- An AWS S3 bucket needs to be created to store Terraform state file.
- A circleCi project must be created that is linked to this repository.
- 
### Operating logic
This repository will need to be added to CircleCi as a project.
The CircleCi project needs to have the AWs credentails configured.

adding a list
- 1
- 2
