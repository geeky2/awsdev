#!/bin/bash
INSTANCE_ID=$1
function STOP_INSTANCE {
	aws ec2 stop-instances --instance-ids $INSTANCE_ID
	if [ $? -ne 0 ];
	then
		echo "there was a problem"
		exit 100
	fi
}
STOP_INSTANCE
