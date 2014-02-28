#!/bin/bash
ROOT_DIR=.
TEMPLATE_DIR=$ROOT/home/mark/gitrepos/awsdev/cf/test-kevin-stack
INSTANCE_NAME=$1
TEMPLATE_NAME=ov-ec2-instance.template
USAGE="$0 InstanceName"
REGION=us-west-2
if [ $# -ne 1 ]
then
	echo "you must supply an InstanceName"
	echo $USAGE
	exit 1
fi
aws cloudformation create-stack --region $REGION --stack-name $INSTANCE_NAME --template-body file:///$TEMPLATE_DIR/$TEMPLATE_NAME --parameters ParameterKey=TagInstanceName,ParameterValue=$INSTANCE_NAME
