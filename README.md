# AWS Resource Usage Tracker (Bash)

## Description
This bash script automates the collection of AWS resource information using the AWS CLI, genereates a report and is designed to run as a scheduled cron job on a Linux system.

## Features
The script reports:
- S3 bucket listings
- EC2 instance IDs
- Lambda functions
- IAM users
Each execution appends a timestamped report to an output file for auditing and tracking purposes.

## Technologoes Used
- Bash/ Shell scripting
- AWS CLI
- Linux
- `jq` for JSON parsing
- `cron` for task scheduling

## Requirements
- Linux or Unix-based OS
- AWS CLI installed and configured
- IAM permissions to read S3,EC2,Lambda, and IAM resources
- `jq` installed

## Usage
Make the script executable:
```bash
chmod +x aws_resource_tracker.sh
```

## Run manually:
```bash
./aws_resource_tracker.sh
```
The output is written to : ~/resourceTracker.txt

## Automation with Cron
To schedule the script to run daily at 8 AM:
```bash
crontab -e
```
Add:
```bash
0 8 * * * /home/youruser/aws_resource_tracker.sh >> /home/youruser/cron.log 2>&1
```
