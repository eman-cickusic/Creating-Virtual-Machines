#!/bin/bash
# Google Cloud CLI commands to create the VMs described in the lab

# Task 1: Create a Utility Virtual Machine
gcloud compute instances create utility-vm \
  --zone=ZONE \
  --machine-type=e2-medium \
  --subnet=default \
  --no-address \
  --image-family=debian-12 \
  --image-project=debian-cloud

# Task 2: Create a Windows Virtual Machine
gcloud compute instances create windows-vm \
  --zone=ZONE \
  --machine-type=e2-standard-2 \
  --subnet=default \
  --tags=http-server,https-server \
  --image-family=windows-2016-core \
  --image-project=windows-cloud \
  --boot-disk-size=64GB \
  --boot-disk-type=pd-ssd

# Add firewall rules for HTTP and HTTPS
gcloud compute firewall-rules create allow-http \
  --direction=INGRESS \
  --priority=1000 \
  --network=default \
  --action=ALLOW \
  --rules=tcp:80 \
  --source-ranges=0.0.0.0/0 \
  --target-tags=http-server

gcloud compute firewall-rules create allow-https \
  --direction=INGRESS \
  --priority=1000 \
  --network=default \
  --action=ALLOW \
  --rules=tcp:443 \
  --source-ranges=0.0.0.0/0 \
  --target-tags=https-server

# Task 3: Create a Custom Virtual Machine
gcloud compute instances create custom-vm \
  --zone=ZONE \
  --machine-type=custom-2-4096 \
  --subnet=default \
  --image-family=debian-12 \
  --image-project=debian-cloud

# Note: Replace ZONE with your desired zone (e.g., us-central1-a)
