# Storage

## Main 3 types as below:

* Block storage: Enterprise applications like databases or ERP systems often require dedicated, low-latency storage for each host. You use block storage for such application requirements.
    * like EBS
* File storage: File storage is used when applications must access shared files and require a file system.
    * like EFS and FSx
* Object storage: You store data as objects, where each object is an encapsulation of data, attributes and metadata. Object stores are highly scalable
    Like S3 and S3 Glacier

## Block Storage

### data Encryption

* S3 Managed keys (SSE-S3)
* AWS KMS Keys (SSE-KMS)
* Customer provided keys (SSE-C)


### Stoarge Classes


### Misc 

* Replication
    - Cross Region
    - Same region

* S3 Transfer Acceleration - copy objects to nearest Edge location, and then move to S3 using AWS networks which are faster


## File Stoarge

### EFS

* scalable, elastic file system for Linux-based workloads
* can be mounted as NFS
* Multiple compute instances (EC2, Lambda etc) can access at the same time
* offerings
    * Standard storage classes  - EFS Standard and EFS Standard–Infrequent Access with  multi AZ resiliency
    * One Zone storage classes - EFS One Zone and EFS One Zone–Infrequent Access , more savings
    * EFS lifecycle management (age off policy of 7,14, 30, 60, or 90 days) 
* supports auth and encryption (at rest and in transit)
* Performance modes
    * General purpose - low latency
    * Max IO - for highly paralllel apps (with thousands of EC2)
* 11 9s durability
* For the most demanding workloads, Amazon EFS can support performance over 10 GB/sec and over 500K IOPS.
* Storage capacity is elastic and we pay only for what we use




### FSx

* quickly launch and run feature-rich and high-performing file systems.

* FSx for Windows File Server
    * fully managed file system for Windows environments
    * upports the Server Message Block (SMB) protocol   
    * upo 64TB
    * encrypted at rest (using KMS) and in transit (using SMB Kerberos)
    * Microsoft AD can be linked to access and use existing access
    * Used for
        * Shared Dirs
        * Lift n Shft WIN apps
        * Support for High Availability Microsoft SQL Server deployments
        * media transcoding, processing, and streaming
        * web serving
        * Data analytics



* FSx for Lustre 
    * works on most Linux systems
    * support POSIX
    * good for HPC
    *  is capable of delivering hundreds of gibibytes (GiB) per second of throughput and millions of IOPS, while maintaining sub-millisecond latencies.

* FSx for NetApp ONTAP 
    * NetApp ONTAP operating system implemented as a fully managed service
    * block level storage over iSCSI and file storage using the NFS and SMB protocols.
    * accessible from Linux, Windows, and macOS compute instances via the industry-standard NFS, SMB, and iSCSI protocols
    * encrypted at rest (using KMS) and in transit (using SMB Kerberos)
    * supports `vsan` using AWS supported Anti virus
    * can scale to PB

    
* FSx for OpenZFS 

    * fully managed implementation of the Open Zettabyte File System (ZFS)
    * supports NFS and SMB protocols
    * accessible from Linux, Windows, and macOS compute instances and containers via the industry-standard NFS protocol (v3, v4, v4.1, and v4.2)
    * supporting up to 12.5 gigabytes per second (GB/s) of throughput and up to 1 million IOPS for frequently accessed cached data (if built on Graviton)
    * encrypted at rest (using KMS) and in transit (using 256-bit encryption )




## Object Storage S3

* 3500 requests per second to add data and 5500 requests per second to retrieve data



## Storage Gateway

* to connect on-prem to S3


### Options

* S3 Standard
* S3 Standard IA
* S3 One Zone IA
* S3 Glacier Instant Retrival
    - less accessed but milli sec retrieval 
* S3 Glacier Flex Retrieval
    - unpredictable needed, min to hrs for retrieval
* S3 Glacier Deep Archive
    - not likely to be restored, 12hrs to rerieval 
* S3 Intelligent Tiering
    - system manages the class level movement based on usage
    - " Frequent Access tier " to "Infrequent Access tier" if not used in 30 days, and to "Archive Instant Access tier" if not used for 90 days
