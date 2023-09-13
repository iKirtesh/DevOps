#!bin/bash

#######################################
# Author : Kirtesh
# Date : 11th Sept
#
# Version : v1
#
# This script will report the AWS resource usage
#######################################

set -x

# AWS S3
# AWS CE2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list EC2 Instances
echo "Print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print list of lambda functions"
aws lambda list-functions

# list IAM users
echo "Print list of IAM Users"
aws iam list-users



#  use command lines to run the script: 

#  chmod 777 aws_resource_tracker.sh
#  ./aws_resource_tracker.sh
#  ./aws_resource_tracker.sh | more


# Note!: Can also use the single command dirctly in terminal
