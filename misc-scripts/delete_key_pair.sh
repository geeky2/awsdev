#!/bin/bash

AWS_HOME_DIR=
WORK_DIR=.
PEM_FILE=bar
KEY_PAIR_NAME=$1

function DELETE_KEY_PAIR {
	NAME=$1
	aws ec2 delete-key-pair --key-name ${NAME}
	if [ $? -ne 0 ];
	then
		echo "bad name"
		exit 100
	fi
}


DELETE_KEY_PAIR $KEY_PAIR_NAME 




