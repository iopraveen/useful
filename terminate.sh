#!/bin/bash
# requires the correct region set via the cli `aws configure` or in ~/.aws/config 

aws ec2 terminate-instances --instance-ids `curl http://169.254.169.254/latest/meta-data/instance-id`

