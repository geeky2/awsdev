#!/bin/bash
ROOT_DIR=.
VPCNAME=$1
USAGE="$0 VPCName"
REGION=us-west-2
if [ $# -ne 1 ]
then
	echo "you must supply a VPC name"
	echo $USAGE
	exit 1
fi
aws cloudformation delete-stack --region $REGION --stack-name $VPCNAME 
