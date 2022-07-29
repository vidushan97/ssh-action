#!/bin/sh

set -eu

export GITHUB="true"

echo $INPUT_USERNAME
echo $INPUT_HOST
echo $INPUT_KEY >> key.pem
echo $INPUT_KEY | tr -d '\r' | ssh-add - > /dev/null
ssh $INPUT_USERNAME@$INPUT_HOST touch abc.text
echo "end"
