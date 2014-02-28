#!/bin/bash

CUSTOMER_NAME=$1

aws cloudformation create-stack --stack-name $CUSTOMER_NAME --template-body file:///home/mark/gitrepos/awsdev/cf/amp50/Primex-stack-v1.txt --parameters ParameterKey=TagInstanceName,ParameterValue=$CUSTOMER_NAME
