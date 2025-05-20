# Creating Virtual Machines

This repository documents the steps to create and explore different types of virtual machines (VMs) in Google Cloud Platform. This lab covers creating standard VMs, Windows VMs, and custom VMs, and explores various VM options and configurations.

## Video

https://youtu.be/uL7kHGomDRY


## Table of Contents
- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Task 1: Create a Utility Virtual Machine](#task-1-create-a-utility-virtual-machine)
- [Task 2: Create a Windows Virtual Machine](#task-2-create-a-windows-virtual-machine)
- [Task 3: Create a Custom Virtual Machine](#task-3-create-a-custom-virtual-machine)
- [Key Learnings](#key-learnings)
- [Screenshots](#screenshots)

## Overview

In this lab, we explore various virtual machine instance options and create several VMs with different characteristics. The goal is to understand the differences between VM types, locations, and configurations available in Google Cloud Platform.

### Objectives

- Create several standard VMs
- Create advanced and specialized VMs
- Explore VM configuration options and limitations
- Connect to VMs via SSH
- Examine VM system information

## Prerequisites

- A Google Cloud Platform account
- Access to Google Cloud Console
- Basic understanding of cloud computing concepts

## Task 1: Create a Utility Virtual Machine

This task involves creating a basic utility VM with specific configurations.

### Steps:

1. In the Google Cloud Console, navigate to **Compute Engine > VM instances**
2. Click **Create Instance**
3. Configure the VM with:
   - Name: A properly formed name for your VM
   - Region & Zone: As specified in your lab environment
   - Series: E2
   - Machine type: e2-medium (2 vCPUs, 4 GB memory)
   - Networking: No external IPv4 address

### Exploring VM Details

After creating the VM:

1. Click on the VM name to see its details
2. Note the CPU platform
3. Examine which properties can be edited after creation and which cannot
4. Explore availability policies:
   - Preemptibility settings
   - Automatic restart options
   - Live migration during host maintenance

### VM Logs

1. On the VM instance details page, click **Logging**
2. Examine the structured log view
3. Expand log entries to see detailed information

## Task 2: Create a Windows Virtual Machine

This task involves creating and configuring a Windows Server VM.

### Steps:

1. In the Google Cloud Console, navigate to **Compute Engine > VM instances**
2. Click **Create instance**
3. Configure the VM with:
   - Name: A name for your Windows VM
   - Region & Zone: As specified in your lab environment
   - Series: E2
   - Machine type: e2-standard-2 (2 vCPUs, 8 GB memory)
   - Operating system: Windows Server
   - Version: Windows Server 2016 Datacenter Core
   - Boot disk type: SSD persistent disk
   - Size: 64 GB
   - Firewall: Allow HTTP and HTTPS traffic

### Setting Windows Password

1. Click on the Windows VM name to access instance details
2. Click **Set Windows password**
3. Copy and save the provided password

### Connecting to Windows VM (Not performed in lab)

- Connection to Windows VMs requires an RDP client
- Connection would be made using the RDP button on the VM instances page
- Authentication would use the password generated earlier

## Task 3: Create a Custom Virtual Machine

This task involves creating a VM with custom specifications.

### Steps:

1. In the Google Cloud Console, navigate to **Compute Engine > VM instances**
2. Click **Create instance**
3. Configure the VM with:
   - Name: A name for your custom VM
   - Region & Zone: As specified in your lab environment
   - Series: E2
   - Machine type: Custom (2 cores, 4 GB memory)
   - Operating system: Debian GNU/Linux 12 (bookworm)

### Connecting via SSH and Exploring VM Specifications

After creating the custom VM:

1. Connect via SSH by clicking the SSH button
2. Run the following commands to examine VM specifications:
   ```bash
   # View memory information
   free
   
   # View RAM details
   sudo dmidecode -t 17
   
   # Verify number of processors
   nproc
   
   # View CPU details
   lscpu
   
   # Exit SSH terminal
   exit
   ```

## Key Learnings

- Different VM types serve different purposes (utility, Windows, custom)
- Some VM properties cannot be changed after creation (machine type, CPU platform, zone)
- Preemptible instances offer cost savings but can be interrupted
- VM availability policies control behavior during maintenance and failures
- Windows VMs require RDP for connection while Linux VMs use SSH
- Custom VMs allow specific CPU and memory configurations
