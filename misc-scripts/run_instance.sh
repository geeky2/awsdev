
#!/bin/bash


NAME=$1
DESCRIPTION="test"

INSTANCE_ID=i-eb011b92
SUBNET_ID=subnet-55c0a634



function RUN_INSTANCE {
	IMAGE_NAME=$1
	DESC=$2
	aws ec2 create-image --instance-id $INSTANCE_ID --name $IMAGE_NAME --description $DESC --block-device-mappings file://./block_mappings.json --security-groups file://./security-groups.json --instance-type m1.medium --monitoring {"Enabled": true} --subnet-id $SUBNET_ID --count 1


	aws ec2 run-instances --image-id ami-c3b8d6aa --count 1 --instance-type t1.micro --key-name MyKeyPair --security-groups MySecurityGroup




	if [ $? -ne 0 ];
	then
		echo "bad name"
		exit 100
	fi
}


 




