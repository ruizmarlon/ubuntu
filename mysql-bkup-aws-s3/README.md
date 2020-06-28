# About

This script will backup a specific mysql DB and push the backup to an AWS S3 bucket

File name will include db name and date  with formating of `"+%m%d%y_%N"`

# Default vars:
```
MYSQL_USER=root
MYSQL_PORT=3306
FILE_PATH=/tmp
```

# Export vars:
```
export DB_HOST=<target host ip>
export export DB_NAME=<mysql db name>
export DB_PASSWORD=<db password>
export AWS_KEY=<AWS_ACCESS_KEY_ID>
export AWS_SECRET_KEY=<AWS_SECRET_ACCESS_KEY>
export AWS_BUCKET=<AWS S3 target location no `s3://` required>
```
# Usage:

`script.sh`

# Sample output
```
Backup beginning

Your backup will be named: testdb-062820_688527918.sql
Target S3 location: s3://jenkins-mysql-test-7a2nqpv9/dbbackup-testdb/

mysqldump: [Warning] Using a password on the command line interface can be insecure.

Uploading your backup testdb-062820_688527918.sql

upload: ../../../tmp/testdb-062820_688527918.sql to s3://jenkins-mysql-test-7a2nqpv9/dbbackup-testdb/testdb-062820_688527918.sql

Success!!!
```

# Alternate usage if not using export and vars are uncommented in script
```
#DB_HOST=$1
#DB_NAME=$2
#DB_PASSWORD=$3
#AWS_KEY=$4
#AWS_SECRET_KEY=$5
#AWS_BUCKET=$6
```

`script.sh <DB_HOST_IP> <DB_NAME> <DB_PASWORD> <AWS_ACCESS_KEY_ID> <AWS_SECRET_ACCESS_KEY> <AWS_TARGET_BUCKET>`
