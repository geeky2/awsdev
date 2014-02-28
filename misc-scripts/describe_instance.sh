

#!/bin/bash

INSTANCE_ID=$1


aws ec2 describe-instances --instance-ids $INSTANCE_ID
