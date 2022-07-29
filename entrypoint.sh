#!/bin/sh

set -eu

export GITHUB="true"

echo $INPUT_USERNAME
echo $INPUT_HOST
ssh -i $INPUT_KEY $INPUT_USERNAME@$INPUT_HOST && ls & exit
echo "end"
