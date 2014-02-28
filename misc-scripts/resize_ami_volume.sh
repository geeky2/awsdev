
#!/bin/bash



INSTANCE_ID=i-1f85af7b

VOLUME_ID=vol-52fbf021

AVAIL_ZONE=us-east-1a

SNAPSHOT_ID=snap-da3084de

SIZE=60


NEW_VOLUME_ID=



aws ec2 describe-instances --instance-ids $INSTANCE_ID


aws ec2 describe-volumes --volume-ids $VOLUME_ID


# stop the instance

aws ec2 stop-instances --instance-ids $INSTANCE_ID


while [ ! `aws ec2 detach-volume --volume-id $VOLUME_ID` ]; 
do
	sleep 1
 	echo trying to detach volume
done



echo volume $VOLUME_ID detached


# aws ec2 create-snapshot --volume-id $VOLUME_ID



aws ec2 create-volume --availability-zone $AVAIL_ZONE --size $SIZE --snapshot $SNAPSHOT_ID


# aws ec2 attach-volume --instance $INSTANCE_ID --device /dev/sda1 $newvolumeid






