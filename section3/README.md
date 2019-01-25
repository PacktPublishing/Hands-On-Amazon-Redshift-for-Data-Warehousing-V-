Notes:
Make sure you change the name of the S3 bucket in params.json

* aws cloudformation create-stack --stack-name first-redshift --template-body file://create_cluster.json --parameters file://params.json --capabilities CAPABILITY_IAM
* aws cloudformation describe-stacks --stack-name first-redshift
* aws cloudformation delete-stack --stack-name first-redshift
* aws cloudformation update-stack --stack-name redshift-spectrum --template-body file://create_cluster.json --parameters file://params.json --capabilities CAPABILITY_IAM

