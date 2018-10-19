## Example of using Circleci and Terraform to create and maintain AWS resources when Infrastructure code is Committed to a specific GitHub repository.

## General process flow:
This repository is "linked" to a CircleCi project that monitors for GitHub commits. When an artifact is commited to the repository, CircleCi wakes up and performs the following steps:

- Downloads a docker image in which to run the Terraform commands.
- Downloads the contents of the GitHub repository to the docker image.
- Runs a Terraform "init" command to read/update the Terraform state file.
- Runs a Terraform "plan" command to show the proposed changes.
- Runs a Terraform "apply" command to apply the changes to the AWS environment.
- Exits and deletes the docker image when completed successfully.

## Dependencies:
- An AWS IAM user with appropriate permissions needs to be created and the credentials placed in the CircleCi project.
Refer to https://github.com/ca-mmis/infrastructure-private/blob/master/prototype/README.md for setting up the AWS IAM user and granting the appropriate priveleges to the user.
- An AWS S3 bucket needs to be created to store Terraform state file.
- An AWS DynamoDB table needs to be created to maintain lock state for the Teraform state file.
- A CircleCi project must be created that is linked to this repository.
- 
### CircleCi project setup:
#The following steps are requird to setup a CircleCi project and "link" the project to this GitHub repository;

- Login to CircleCi (web) the assumption is that your CircleCi is already linked to GitHub).
- Select the main branch in the upper left hand corner of the circleCi main screen
- Select "Add Projects" tab
- Select "setup project" box next to the line listing this repository
- Select "Start Building" box 
  Note: nothing will build at this time, building will be triggered by a GitHub commit action
- Select "Add Projects" tab again if necessary
- Click on the repository name of the project you are creating, you should see the "Jobs" screen
- Click on the gear icon next to the job, this will show the settings for the job
- Select "AWS Permissions" and enter the Access Key ID and Secret Key ID for the AWS user described above in the Dependencies section

### Following the CircleCi project:

CircleCi is actively following a project when the prjects tab shows "Unfollow project"
The Terraform logic will occur when something is commited to the GitHub repository.

### Reviewing the running results of a commit:
- Commit a change to the repository, for demonstration purposes, modify the variables.tf file and change the value of the EC2_instance_type from "t2.micro" to "t2.small" or vice versa basedon it's current value.
- 
