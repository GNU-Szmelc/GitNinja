#!/bin/bash

# Check if log.txt exists
if [ ! -f "log.txt" ]; then
  echo "log.txt file not found. Please run log_forks.sh first."
  exit 1
fi

# Read the log file line by line and set each repository to private
while read -r repository; do
  echo "Setting $repository to private..."
  gh repo edit --visibility private "$repository"
done < log.txt

echo "All repositories in log.txt have been set to private."
