#!/bin/bash
ROOT_DIR=.
TEMPLATE_DIR=$ROOT/home/mark/gitrepos/awsdev/cf/test-kevin-stack
KEY_NAME=$1
BASTION_KEY_NAME=$2
VPC_ID=$3
SUBNET_ID=$4
TEMPLATE_NAME=bastion.template
USAGE="$0 KeyName BastionKeyName VPCId SubnetId"
REGION=us-west-2
if [ $# -ne 4 ]
then
	echo "you must supply the following parameters"
	echo $USAGE
	exit 1
fi
aws cloudformation create-stack --region $REGION --stack-name $BASTION_NAME --template-body file:///$TEMPLATE_DIR/$TEMPLATE_NAME --parameters ParameterKey=KeyName,ParameterValue=$KEY_NAME ParameterKey=BastionKeyName,ParameterValue=$BASTION_KEY_NAME ParameterKey=VpcId,ParameterValue=$VPC_ID ParameterKey=SubnetId,ParameterValue=$SUBNET_ID
