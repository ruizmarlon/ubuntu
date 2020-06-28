# About

This script will backup a specific mysql DB and push the backup to an AWS S3 bucket

Note: expects mysql to be running on port `3306`

# Exported vars:
```
export DB_HOST=<target host ip>
export export DB_NAME=<mysql db name>
export DB_PASSWORD=<db password>
export AWS_KEY=<AWS_ACCESS_KEY_ID>
export AWS_SECRET_KEY=<AWS_SECRET_ACCESS_KEY>
export AWS_BUCKET=<AWS S3 target location no "s3://" required>
```
# Usage:

`script.sh`
