
#!/bin/bash


NAME=$1
DESCRIPTION="test"

INSTANCE_ID=i-eb011b92



function CREATE_IMAGE {
	IMAGE_NAME=$1
	DESC=$2
	aws ec2 create-image --instance-id $INSTANCE_ID --name $IMAGE_NAME --description $DESC --block-device-mappings file://./block_mappings.json 

	if [ $? -ne 0 ];
	then
		echo "there was a problem"
		exit 100
	fi
}


CREATE_IMAGE $NAME $DESCRIPTION 




