#!/bin/bash

# Linux System Report Generator
# Created for the GIT IT STARTED workshop

REPORT_FILE="system-report.txt"

{
	echo "======================================="
	echo "         LINUX SYSTEM REPORT"
	echo "======================================="
	echo

	echo "Report generated on: $(date)"
	echo

	echo "---------------------------------------"
	echo "1. HOSTNAME"
	echo "---------------------------------------"
	hostname
	echo

	echo "---------------------------------------"
	echo "2. KERNEL VERSION"
	echo "---------------------------------------"
	uname -r
	echo

	echo "---------------------------------------"
	echo "3. DISK USAGE"
	echo "---------------------------------------"
	df -h
	echo

	echo "---------------------------------------"
	echo "4. MEMORY USAGE"
	echo "---------------------------------------"
	free -h
	echo

	echo "---------------------------------------"
	echo "5. TOP RUNNING PROCESSES"
	echo "---------------------------------------"
	ps -eo ping, comm,%cpu,%mem --sort=-%cpu | head -n 6
	echo

} > "$REPORT_FILE"

echo "System report generated successfully!"
echo "Report saved to: $REPORT_FILE"
