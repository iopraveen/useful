#!/bin/bash
# requires the correct region set via the cli `aws configure` or in ~/.aws/config 

ec2-terminate-instances $(curl -s http://169.254.169.254/latest/meta-data/instance-id)

