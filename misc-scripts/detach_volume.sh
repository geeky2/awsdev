

#!/bin/bash

INSTANCE_ID=$1
VOLUME_ID=$2


aws ec2 detach-volume --instance-id $INSTANCE_ID --volume-id $VOLUME_ID
