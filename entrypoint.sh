#!/bin/sh

set -eu

export GITHUB="true"

echo $INPUT_USERNAME
echo $INPUT_HOST
echo $INPUT_KEY >> key.pem
ssh -i key.pem $INPUT_USERNAME@$INPUT_HOST touch abc.text
echo "end"
