#!/bin/bash
IMAGE_ID=$1
function DEREGISTER_IMAGE {
	aws ec2 deregister-image --image-id $IMAGE_ID

	if [ $? -ne 0 ];
	then
		echo "there was a problem"
		exit 100
	fi
}
DEREGISTER_IMAGE
