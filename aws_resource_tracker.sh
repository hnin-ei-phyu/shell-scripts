#!/bin/bash

###################################
# Auther: Panei
# Date: 2nd-Feb
#
# Version: v1
#
# This script will report the AWS resource usage
#############################

# Absolute Paths (Critical for cron)
AWS=/usr/bin/aws
JQ=/usr/bin/jq
OUTFILE=/home/panei/resourceTracker.txt
DATE=$(date +"%Y-%m-%d %H:%M:%S")

echo "=======AWS Resource Report ($DATE) =======" >> "$OUTFILE"

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 bucket
echo "Print list of S3 buckets" >> "$OUTFILE"
aws s3 ls >> "$OUTFILE"

# list EC2 Instances
echo "Print list of EC2 buckets" >> "$OUTFILE"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> "$OUTFILE"

# list aws Lampda 
echo "Print list of Lambda functions" >> "$OUTFILE"
aws lambda list-functions >> "$OUTFILE"

# list IAM users
echo "Print list of IAM users" >> "$OUTFILE"
aws iam list-users >> resourceTracker >> "$OUTFILE"
