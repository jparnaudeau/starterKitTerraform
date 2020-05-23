#!/bin/bash

if [ $# -ne 1 ]
then
   echo "Set the bucket-name"
   echo "Usage : $0 <bucket-name>"
   exit 1
fi

BUCKET_NAME=$1

echo "create Terraform tfstate bucket"
aws s3api create-bucket --bucket $BUCKET_NAME --region eu-west-3 --create-bucket-configuration LocationConstraint=eu-west-3
