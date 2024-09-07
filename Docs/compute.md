

Main items are

* EC2
* AMI
* EC2 key pair




EC2 instance families:
![image family](../images/ec2-types.png)

* General purpose
  * Balance of compute, memory and networking
  * Diverse workloads
  * Web applications

* Compute optimized
  * Compute-bound applications
  * High-performance processors
  * Media transcoding
  * Scientific modeling
  * Machine learning

* Memory optimized
  * Fast delivery of large datasets in memory
  * Database servers
  * Web caches
  * Data analytics

* Accelerated computing
  * High-graphics processing
  * GPU bound
  * Machine learning
  * High performance computing (HPC)
  * Autonomous vehicles

* Storage optimized
  * High sequential read/write
  * Large datasets
  * NoSQL databases
  * Amazon OpenSearch Service

* EC2 Tenancy
    * shared
    * Dedicated instance
    * Dedicated Host

* Placement Groups
  * Cluster
    * for HPC, low ltency, high throuput
  * Spread
    * for critical workloads - for fault tolerance
  * Partition
    * Kafka, Hadoop, Cassandra etc


* Stoarge on EC2
    * EBS
    * Instance Store Disk
        * attached to EC2 instance
        * non persistant


* Pricing
    * On Demand
    * Savings Plan
        * 1 or 3 years of commitment
        * Compute savings plan
            * across instance family, region/AZ , tenancy
        * Instance Savings plan
            * across size, OS, AZ and tenancy
    * Spot


----
![EBS types are](../images/EBS-types.png)

----
![ELB types](../images/elb-types.png)
