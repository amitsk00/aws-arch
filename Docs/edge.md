# Edge

## Route 53

* Smart DNS service
* Of types
  * Public hosted zones - for internet
  * private hosted zones - for within VPC (across multiple accounts as well)

* Routing policies:
  * Simple
  * Failover
  * Geo-location
  * Geo-proximity
  * Latency based
  * Multivalue answering
  * Weighted routing

## CloudFront

* data origin can be:
  * S3
  * ELB
  * Custom as in
    * EC2 instance
    * on-prem server

* Define cache behavior:
  * path pattern
  * protocol policy
  * HTTP method
  * Signed URL
  * Cache policy

## DDoS

* AWS Shield
  * standard (at layer 3 n 4)
    * SYN/UDP floods
    * reflection attacks
  * Advanced (at layer >6) - at extra cost

* AWS WAF
  * control bots
  * controls SQLi or XSS etc

* AWS Firewall Manager shows details of all below
  * AWS WAF
  * VPC Security groups
  * AWS SHield
  * AWS Network Firewall

## AWS Outposts

* helps with data residency issues
* only selected services are offered, not all
* `Outpost servers` take smaller size than `Outpost racks`
* a pool of AWS compute and storage capacity deployed at a site

## Snow edge compute and storage

### AWS Snowball 

* an edge computing, data migration, and edge storage device.
* Snowball Edge comes in two options: Storage Optimized for the highest storage capacity and Compute Optimized for more available vCPUs with a lower storage capacity.
* PB scale data
* AWS Snowball Edge Storage Optimized devices provide 24 vCPUs of compute capacity, coupled with 80 terabytes (TB) of usable block or Amazon S3-compatible object storage
* AWS Snowball Edge Compute Optimized devices provide 52 vCPUs, 42 TB of usable block or object storage
* Edge Use Cases:
  * Intermittent connectivity (such as manufacturing, industrial, and transportation)
  * Extremely remote locations (such as military or maritime operations) 
* feature a Trusted Platform Module (TPM) that provides a hardware root of trust
* 22kg, 28*10*15 inches

### AWS Snowcone 

* the smallest member of the AWS Snow Family of edge computing, edge storage, and data transfer devices, weighing in at 4.5 pounds (2.1 kg). Snowcone is ruggedized, secure, and purpose-built for use outside of a traditional data center.
* Use Cases:
  * Internet of Things (IoT)
  * vehicular, or drone
* includes AWS DataSync installed only with a Local compute and storage job type. 
* small in size, 2.1kg and 9*6*3 inches in size
* for data transfer
  * offline - device is sent to location
  * online - using AWS DataSync
* comes in an 8TB HDD version and an 14TB SSD version.



### AWS Snowmobile 

*  an exabyte-scale data transfer service used to move large amounts of data to AWS. You can transfer up to 100 PB per Snowmobile, a 45-foot long ruggedized shipping container, pulled by a semitrailer truck. Snowmobile makes it easy to move massive volumes of data to the cloud, including video libraries, image repositories, or even a complete data center migration.

-----


## AWS Storage Gateway

* connects on-premises users and applications using a software appliance with cloud-based storage
* It provides integration between an organization’s on-premises IT environment and the AWS storage infrastructure
* Types
  * Amazon S3 File Gateway - offers SMB or NFS-based access to data in Amazon S3 with local caching.
  * Amazon FSx File Gateway  - fully managed, highly reliable file shares in Amazon FSx for Windows File Server
  * Volume Gateway - cloud-backed iSCSI block storage volumes to your on-premises applications
  * Tape Gateway - to replace physical tapes on premises with virtual tapes in AWS without changing existing backup workflows


-----


## Data Transfer and Migration

* AWS Transfer Family - support for sFTP and FTP
* AWS DataSync - online data transfer service that simplifies, automates, and accelerates moving data between on-premises storage systems and AWS Storage services
* Offline data transfer - using Snow family
* AWS Application Migration Service (AWS MGN) - CloudEndure Migration
  * automated lift and shift

## Data Protection

### AWS Backup

* centralize and automate data protection across AWS services
* Backup across
    * Amazon EC2 instances
    * Amazon EBS volumes
    * Amazon RDS databases (including Amazon Aurora clusters)
    * Amazon DynamoDB tables
    * Amazon Neptune databases
    * Amazon DocumentDB (with MongoDB compatibility) databases
    * Amazon EFS
    * Amazon FSx for Lustre
    * Amazon FSx for Windows File Server
    * AWS Storage Gateway volumes
    * Amazon Simple Storage Service (Amazon S3) buckets
    * VMware workloads on premises and in VMware CloudTM on AWS

### Snapshots

* stored in a protected part of Amazon S3 as part of the managed service
* regional access and availability with 11 9s of durability
* are incremental copies of the data, which means that only the data that has changed after your most recent snapshot is saved

### Replication

* can be between Availability Zones within an AWS Region or between AWS Regions.

### CloudEndure Disaster Recovery 

* cost-effective disaster recovery option for your on-premises servers and applications
* continuously replicates your machines into a low-cost staging area in your target AWS account and preferred Region
