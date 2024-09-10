# IAM


## Users

* has long term creds like password

## IAM Groups

* COllection of IAM Users

## IAM Roles

* IAM id with specific permissions
* it can be assumed by anyone who needs it
* no long term creds, 
* `Trust Policy` is used to define who can assume this role
    * root needs no trust policy
    * if user adn role in same account, then `Trust Policy` to trust IAM User is enough. if Dff account, then policy is needed from IAM user side as well


## IAM Policies

* An inline policy is a policy that's embedded in an IAM identity
* An AWS managed policy is a standalone policy that is created and administered by AWS. Standalone policy means that the policy has its own Amazon Resource Name (ARN) that includes the policy name
* 3 types
    * Identity based policies
    * Resource based policies
    * other policies


## Principal

* a human user or workload that can make a request for an action or operation on an AWS resource
* IAM users and root have perm creds
* IAM Roles have temp creds


## Authentication

* Username and password
* Digital Cert
* Access keys


## Authorization

* 


## AWS Security Token Service (AWS STS)

* a web service you can use to request temporary, limited-privilege credentials for IAM users or users you authenticate (federated users)


## Monitoring

* with
    * CloudTrail
    * IAM Access Analyzer
    * IAM Access Advisor
