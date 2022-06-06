#!/bin/bash

set -e

echo "Running tests"
bundle exec rake test

echo "Listing files"
ls -Gghl data

echo "Dumping files"

echo "Source:"
cat -n data/source.csv

echo "Destination:"
cat -n data/destination.csv

echo "--- [DONE] ---"
