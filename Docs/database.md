
# Databases

| DB Option | Descr | Genetic Use |
|-|-|-|
| RDS | typical DB solutions | Postgres, MySQL, Oracle, MS SQL Server, MariaDB etc |
| Aurora | Managed RDS | |
| Redshift | data warehouse | |
| DynamoDB | fully managed noSQL , high concurrency and connections |  |
| Elasti Cache | Caching | Redis and MemCached |
| MemoryDB for Redis | Redis-compatible, durable, in-memory database service that delivers ultra-fast performance | Redis |
| DocumentDB | NoSQL fully managed document database | MongoDB |
| Keyspaces | scalable, highly available, and managed, high-volume applications with straightforward access patterns (wide column)  | Apache Cassandra |
| Neputune | fully managed graph database , for highly connected data with a rich variety of relationships. | |
| Timestream | fast, scalable, and serverless time series database service for Internet of Things (IoT) and operational applications | |
| Quantum Ledger Database  QLDB | purpose-built ledger database that provides a complete and cryptographically verifiable history of all changes made  | |
| | | |
| | | |
| | | |


## RDS

* relational / SQL
* six familiar database engines to choose from, including Amazon Aurora, PostgreSQL, MySQL, MariaDB, Oracle Database, and Microsoft SQL Server

## Aurora

* relational / SQL
* compatible with MySQL and PostgreSQL 
* Consider Aurora if your workloads require **high availability**
* upto 15 read replicas
* automatically maintains six copies of your data across three availability zones.


## Redshift

* enterprise-level, petabyte-scale, fully managed data warehousing service.
* efficient storage and optimum query performance through a combination of massively parallel processing, columnar data storage, and very efficient, targeted data compression encoding schemes.
* analyze exabytes of data and run complex analytical queries,



## DocumentDB (mongo)

* performance, scalability, and availability you need when operating mission-critical MongoDB workloads at scale
* storage and compute are decoupled
* storage can scale from 10GB to 64TB



## DynamoDB

* non-relational / NoSQL
* massively scalable, distributed
* on-demand or provisioned models
* scale up or scale down your tables' throughput capacity without downtime or performance degradation
* `global table` is where we can have 1 replica in multiple regions


## Amaxon ElastiCache

* high-performance, scalable, and cost-effective caching solution
* works with Redis, Memcached engines

* non-relational / NoSQL


## Amazon MemoryDB 

* fully managed for Redis
* durable, in-memory database service that delivers ultra-fast performance.
* this is not cache, but a primary DB

## Amazon KeySPaces (Cassandra)

* a scalable, highly available, and managed Apache Cassandra–compatible database service
* wide column DB
* availability of 4 9s (99.99%)
* replicated three times in multiple AWS Availability Zones for high availability


## Amazon Timestream

* fast, scalable, fully managed time series  **serverless** database service for Internet of Things (IoT)
* operational applications that facilitates storage and analysis of **trillions** of events per day at **one-tenth the cost** of relational databases
* data is always encrypted, rest or transit


## Amazon Quantum Ledger Database QLDB

* fully managed ledger DB
* transparent, immutable and cryptographic verifiability of stored records
* billed for storage and Io

## Amazon Neptune

* fast, reliable, fully managed graph database service for applications that work with highly connected datasets
* offers read replicas for high availability
* great for making relevant recommendations and allowing for rapid querying of those relationships
* great for social networks, e comm platforms and fraud detection


## Amazon Athena

* interactive query service that makes it easy to analyze data in Amazon S3
* uses standard SQL
* serverless




## DMS

* homogenous or heterogeneous
* S3 can b source or target, either
* AWS Schema COnversion Tool (SCT)

