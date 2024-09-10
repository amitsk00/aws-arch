

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
| have explcit deny rule| | 


## VPC network

* Default network
    * 1 subnet in each region (with /16 CIDR, and /20 for subnet)
    * no overlap across subnet IP

* Custom VPC
    * everything needs to be created explicitly
    * Subnet, Routing, Endpoints can be modified as needed


## VPC Endpoints

* reliable path between your VPC and supported AWS services
* virtual devices, which are horizontally scaled, redundant, and highly available VPC components
* of 2 types:
    * gateway VPC endpoint 
        *for certain services like S3 and DynamoDB
        * needs touting table changes ( prefix list)
    * interface VPC endpoint
        * no routing changes needed
        * it has Security Group on it 



## VPC Peering

* non transititive, one to one 
* across VPC, across accounts 
* MTU limit of **1500**
* Bypass the internet gateway or virtual private gateway
* avoid bandwidth bottlenecks
* highly available, private IP conn


## Hybrid Networks

* VPN
* Direct COnnect

![diff / compare ](../images/vpn%20vs%20directconnect.png)


## AWS Transit Gateway

* acts as hub, can connect upto 5000 VPCs
* also works with DirectConnect and VPN for on-prem conn
* routes can be configured to adjust access (grant or revoke across certain VPC)



## Best practises:

1. Use  `Amazon GuardDuty` to detect potential threats to your accounts, containers, workloads, and data within your AWS environment. The foundational threat detection includes monitoring the VPC flow logs associated with your Amazon EC2 instances.