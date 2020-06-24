#!/bin/bash
AWS_CLI_PROFILE="my-cli-profile"; # Replace this with your AWS CLI Profile
STACK_NAME="sse-enabled-s3"; # Replace this with a name that you desire.
ENVIRONMENT_CODE="dev"; # Replace this with an environment code you desire
APP_NAME="test-app"; # Replace this with the app name associated with your S3 bucket.


if aws cloudformation describe-stacks --profile "$AWS_CLI_PROFILE" --stack-name "$STACK_NAME" &> /dev/null ; then
    aws cloudformation update-stack \
        --stack-name "${STACK_NAME}" \
        --template-body file://template.cfn.yaml \
        --profile "${AWS_CLI_PROFILE}" \
        --parameters ParameterKey=AppName,ParameterValue=$APP_NAME ParameterKey=Environment,ParameterValue=$ENVIRONMENT_CODE \
        --capabilities CAPABILITY_AUTO_EXPAND
else
    aws cloudformation create-stack \
        --stack-name "${STACK_NAME}" \
        --template-body file://template.cfn.yaml \
        --profile "${AWS_CLI_PROFILE}" \
        --parameters ParameterKey=AppName,ParameterValue=$APP_NAME ParameterKey=Environment,ParameterValue=$ENVIRONMENT_CODE \
        --capabilities CAPABILITY_AUTO_EXPAND
fi