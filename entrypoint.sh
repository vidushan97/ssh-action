#!/bin/sh

set -eu

export GITHUB="true"

echo $INPUT_USERNAME
echo $INPUT_HOST
apt-get install openssh-client
ssh -i $INPUT_KEY $INPUT_USERNAME@$INPUT_HOST && touch abc.text
echo "end"
