

Main components are:

* VPC
* Subnet
* Internet Gateway
* Route Table
* Elastic IP Addr
    * only 5 per region (by default - can increase quota)
    * supports BYOIP
    * Can be linked to EC2 instance, ENI or NAT Gateway
* Elastic Network Interface (ENI)  ??
    * Maintains its private IP address, Elastic IP address, and MAC address 
    * helps when licensing is a concern
* NAT Gateway
    * Inside Public Subnet , thru Internet Gateway
    * one way outbound connection

* Network ACL
    * contains a numbered list of rules.
    * default NACL, allows all inbound and outbound IPv4 traffic
    * custom NACL, deny all inbound and outbound traffic, until you add rules



|Security Group|Network ACL|
|-|-|
|Security group act as a firewall for associated EC2 instances, and are associated with elastic network interface implemented by a hypervisor|Network ACLs act as a firewall for associated subnets|
|Controls inbound and outbound traffic at instance level |Controls inbound and outbound traffic at subnet level|
|Supports Allow rules only|Supports both Allow and Deny rules|
|A stateful firewall |A stateless firewall|
|Needs to be manually assigned to instances |Automatically applied when instances are added to subnet|