#!/bin/bash
if [ $# -ne 1 ]
then
	echo "you must supply a template name: example /home/mark/some.template"
	echo $USAGE
	exit 1
fi
FILE=$1
aws cloudformation validate-template --template-body file:///$FILE
