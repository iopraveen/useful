#!/bin/bash
# requires the correct region set via the cli `aws configure` or in ~/.aws/config 

die() { status=$1; shift; echo "FATAL: $*"; exit $status; }
EC2_INSTANCE_ID="`wget -q -O - http://169.254.169.254/latest/meta-data/instance-id || die \"wget in$
echo $EC2_INSTANCE_ID
aws ec2 terminate-instances --instance-id $EC2_INSTANCE_ID
