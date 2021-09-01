# Build Docker image of UATS
This repository is used to create Docker image of UATS project when code is pushed/ merged to any branch
## Pre requisites
### Configure Action secrets
* BUILD_ARTIFACT_LOCATION - S3 bucket that stores build artifacts (tar.gz file)
* BUILD_ARTIFACT_TYPE - Location on bucket that stores artifacts
* ECR_AWS_ACCESS_KEY_ID - AWS access key id used to publish images to ECR
* ECR_AWS_SECRET_ACCESS_KEY - AWS secret access key used to publish images to ECR
* ECR_AWS_REGION - AWS region of ECR repository

### 