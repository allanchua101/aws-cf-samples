# Basic S3 Bucket with SSE Encryption Enabled

This Cloud Formation template is used for provisioning S3 buckets with SS3-encryption enabled. The sample also includes a shell script used for releasing the Cloud Formation stack.

## Parameters

The Cloud Formation template accepts the following parameters:


- **AppName** - Name of application. It will be used for the templated name and APP_NAME tag of the bucket.
- **Environment** - Code of environment that will be represented by the stack. The valid values are *dev*, *uat* and *prod*

## Provisioning

In order to provision / release the SSE-enabled S3 bucket, you will have to run the release script found in this directory and configure the following variables to contextualize it for your application.

- **AWS_CLI_PROFILE** - Replace this with your AWS CLI Profile
- **STACK_NAME** - Replace this with a name that you desire.
- **ENVIRONMENT_CODE** - Replace this with an environment code you desire
- **APP_NAME** - Replace this with the app name associated with your S3 bucket.

## Support

If you need some guidance, request or help on adding more properties to your S3 bucket, please don't hesitate to contact me at **allanchua.officefiles@gmail.com**