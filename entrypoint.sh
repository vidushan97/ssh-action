#!/bin/sh

set -eu

export GITHUB="true"

echo $INPUT_USERNAME
echo $INPUT_HOST
#echo $INPUT_KEY >> key.pem
#ssh -i key.pem $INPUT_USERNAME@$INPUT_HOST touch abc.text
eval $(ssh-agent -s)
echo "$INPUT_KEY" | tr -d '\r' | ssh-add - > /dev/null
mkdir -p ~/.ssh
chmod 700 ~/.ssh
apk add --update --no-cache sshpass openssh-client jq net-tools curl gettext
ssh $INPUT_USERNAME@$INPUT_HOST touch abc.text
echo "end"
