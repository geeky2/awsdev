#!/bin/bash
STACKNAME=$1
USAGE="$0 STACKNAME"
REGION=us-west-2
if [ $# -ne 1 ]
then
	echo "you must supply a stack name"
	echo $USAGE
	exit 1
fi
aws cloudformation get-template --region $REGION --stack-name $STACKNAME 

