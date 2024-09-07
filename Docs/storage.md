# Storage

## Main 3 types as below:

* Block storage: Enterprise applications like databases or ERP systems often require dedicated, low-latency storage for each host. You use block storage for such application requirements.
    * like EBS
* File storage: File storage is used when applications must access shared files and require a file system.
    * like EFS and Fx
* Object storage: You store data as objects, where each object is an encapsulation of data, attributes and metadata. Object stores are highly scalable
    Like S3 and S3 Glacier

## Block Storage

### data Encryption

* S3 Managed keys (SSE-S3)
* AWS KMS Keys (SSE-KMS)
* Customer provided keys (SSE-C)


### Stoarge Classes

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


### Misc 

* Replication
    - Cross Region
    - Same region

* S3 Transfer Acceleration - copy objects to nearest Edge location, and then move to S3 using AWS networks which are faster


## File Stoarge

### EFS

* scalable, elastic file system for Linux-based workloads
* can be mountes as NFS

### FSx

* quickly launch and run feature-rich and high-performing file systems.
* FSx for Windows File Server
* FSx for Lustre - works on most Linux systems
* FSx for NetApp ONTAP 
* FSx for OpenZFS 

