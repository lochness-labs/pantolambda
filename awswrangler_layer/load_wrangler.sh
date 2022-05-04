#!/bin/bash

if [ "$1" = "" ]
then
  echo "Usage: $(basename $BASH_SOURCE) <aws profile name> <aws region>"
  return 1
fi

aws lambda publish-layer-version --layer-name layer-awswrangler --description "awswrangler-layer-2.15.1-py3.8" --zip-file fileb://awswrangler-layer-2.15.1-py3.8.zip --compatible-runtimes python3.8 --profile "$1" --region "$2"
