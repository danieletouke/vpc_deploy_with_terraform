#!/bin/bash

#deploy the resources to terraform
cd /var/lib/jenkins/workspace/vpc_deploy_terraform/vpc_deploy_with_terraform/

DIR2=/var/lib/jenkins/workspace/vpc_deploy_terraform/vpc_deploy_with_terraform/.terraform

if [ -d "$DIR2" ];
then
    echo "$DIR2 exists."
   
else
    AWS_ACCESS_KEY_ID=AKIAWG645TRDVOBNSQS3 AWS_SECRET_ACCESS_KEY=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 terraform init
fi

FILE=my_file.yml
MY_REGION=`yq '.aws_regions.region' $FILE`

echo $MY_REGION

AWS_REGION=$MY_REGION

terraform plan

terraform apply --auto-approve
