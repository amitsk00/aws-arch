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
