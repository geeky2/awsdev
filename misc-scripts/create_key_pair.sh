#!/bin/bash

AWS_HOME_DIR=
WORK_DIR=.
PEM_FILE=bar
KEY_PAIR_NAME=$1

function CREATE_KEY_PAIR {
	NAME=$1
	PEM_FILE=${NAME}.pem
	aws ec2 create-key-pair --key-name ${NAME} | tee /home/mark/aws_development/lori.pem
	if [ $? -ne 0 ];
	then
		echo "bad name"
		exit 100
	fi
}


CREATE_KEY_PAIR $KEY_PAIR_NAME 




