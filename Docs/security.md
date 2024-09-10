# Security

## Security Hub

* Reduced effort to collect and prioritize findings
* Automatic security checks against best practices and standards
* Consolidated view of findings across accounts and providers
* Ability to automate finding updates and remediation



## AWS Config

* continuously tracks the configuration changes that occur among your resources
* checks whether these changes do not comply with the conditions in your rules
* Status can be:
    * COMPLIANT - the rule passes the conditions of the compliance check.

    * NON_COMPLIANT - the rule fails the conditions of the compliance check.

    * ERROR - one of the required/optional parameters is not valid, or not of the correct type, or is formatted incorrectly.

    * NOT_APPLICABLE - used to filter out resources that the logic of the rule cannot be applied to. For example, the alb-desync-mode-check rule only checks Application Load Balancers, and ignores Network Load Balancers and Gateway Load Balancers.

## Best Practises