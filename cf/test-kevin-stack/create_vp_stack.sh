#!/bin/bash
ROOT_DIR=.
TEMPLATE_DIR=$ROOT/home/mark/gitrepos/awsdev/cf/test-kevin-stack
VPCNAME=$1
TEMPLATE_NAME=vpc.template
USAGE="$0 VPCName"
REGION=us-west-2
if [ $# -ne 1 ]
then
	echo "you must supply a VPCName"
	echo $USAGE
	exit 1
fi
aws cloudformation create-stack --region $REGION --stack-name $VPCNAME --template-body file:///$TEMPLATE_DIR/$TEMPLATE_NAME --parameters ParameterKey=VpcName,ParameterValue=$VPCNAME
