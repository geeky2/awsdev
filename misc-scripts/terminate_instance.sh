#!/bin/bash
INSTANCE_ID=$1
function TERMINATE_INSTANCE {
	aws ec2 terminate-instances --instance-ids $INSTANCE_ID
	if [ $? -ne 0 ];
	then
		echo "there was a problem"
		exit 100
	fi
}
TERMINATE_INSTANCE
