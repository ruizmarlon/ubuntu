#/bin/bash

# set input variables (optional, use if you don't plan to export before run)

#DB_HOST=$1
#DB_NAME=$2
#DB_PASSWORD=$3
#AWS_KEY=$4
#AWS_SECRET_KEY=$5
#AWS_BUCKET=$6

# generate variables locally

DB_DATE=$(date "+%m%d%y_%N")
BACKUP=$DB_NAME-$DB_DATE.sql
MYSQL_USER=root
MYSQL_PORT=3306
FILE_PATH=/tmp

echo ""
echo "Backup beginning..."
echo ""
echo "Your backup will be named: $BACKUP"
echo "Target S3 location: s3://$AWS_BUCKET"
echo ""
mysqldump -u $MYSQL_USER -p$DB_PASSWORD -h $DB_HOST -P $MYSQL_PORT $DB_NAME > $FILE_PATH_LOCAL/$BACKUP && \
export AWS_ACCESS_KEY_ID=$AWS_KEY && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_KEY && \
echo ""
echo "Uploading your backup $BACKUP"
echo ""
aws s3 cp $FILE_PATH_LOCAL/$BACKUP s3://$AWS_BUCKET && \
echo "" && \
echo "Success!!!"
echo ""
