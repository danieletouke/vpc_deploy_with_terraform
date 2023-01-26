#!/bin/bash

#Clone my github repo

PROJECT=vpc_deploy_with_terraform


if [ -d "$PROJECT" ];
then
    echo "$PROJECT exists."
else
    git clone https://github.com/danieletouke/vpc_deploy_with_terraform.git
fi


cd vpc_deploy_with_terraform/

if [ $?==0];
then
    echo "great job!!"
fi

git pull

