Notes:
Make sure you change the name of the S3 bucket in params.json

* aws cloudformation create-stack --stack-name redshift-spectrum --template-body file://create_cluster.json --parameters file://params.json --capabilities CAPABILITY_IAM
* aws cloudformation describe-stacks --stack-name redshift-spectrum
* aws cloudformation delete-stack --stack-name redshift-spectrum
* aws cloudformation update-stack --stack-name redshift-spectrum --template-body file://create_cluster.json --parameters file://params.json --capabilities CAPABILITY_IAM

Glue Data Catalog

