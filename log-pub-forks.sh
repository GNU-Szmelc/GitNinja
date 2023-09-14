#!/bin/bash

# Clear the existing log file
> log.txt

# Get a list of forked repositories and extract the "username/repository-name" format
gh repo list --fork --json 'nameWithOwner' --jq '.[] | .nameWithOwner' > log.txt

echo "Forked repositories logged to log.txt"
