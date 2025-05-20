#!/bin/bash
# VM verification scripts
# These are the commands used in Task 3 to verify custom VM specifications

# Display memory information (used and free)
echo "===== MEMORY INFORMATION ====="
free

# Display RAM hardware details (requires root privileges)
echo -e "\n===== RAM HARDWARE DETAILS ====="
sudo dmidecode -t 17

# Display number of processors
echo -e "\n===== PROCESSOR COUNT ====="
nproc

# Display detailed CPU information
echo -e "\n===== CPU DETAILS ====="
lscpu
