### Databases

* Database is a collection of information
* Database Management systems are softwares/engines which allow multiple users to parallely work with same data (Read/Write)
    * Read => Select
    * Write => Create/Update/insert
* Database types :
    * Relational Databases
    * NOSQL Databases
    * Data Warehouse

![alt text](shots/1.PNG)

### Relational Databases

* Relational Database are databases, where we design the data in terms of `Tables with Rows and Columns`. The structure of the Table is called as _**Schema**_

* Each `row` represents a _**Record**_
* Tables will have relationships between them
    * one – one
    * one – many
    * many – one
    * many – many

![alt text](shots/2.PNG)

* To work with databases, a formal language called as _**SQL (Structure Query Language )**_ exists
* Popular Database Engines :
    * Microsoft SQL Server
    * Oracle
    * mySQL
    * mariaDB
    * PostgreSql
    * DB2

* Databases are used from `application code` as well as `db client software` to deal with data

![alt text](shots/3.PNG)

* Scaling helps in solving the needs, as the usage grows
    * _**Vertical Scaling**_ : increase hardware or system resources
    * _**Horizontal Scaling**_ : increase number of servers running databases
* Relational Databases donot have inbuilt support for horizontal scaling
* Replications need to be setup, for `bidirectional transfers` (DBA skills are required)

![alt text](shots/4.PNG)

* Majority of the applications read more data than writing

![alt text](shots/5.PNG)

* Administration:
    * Installation/Patching/Configuring
        * OS
        * DBMS
    * User Managment
    * Connection Management
    * Backups and recovery
    * Performance Tuning
    * Replications

### NOSQL Databases

* _**NOSQL (Not only SQL)**_ Databases are used to store semi structured information
* NOSQL Databases are designed to support :
    * inbuilt horizontal scaling
    * semi-structured
    * don’t impose strict schema’s
* NOSQL Database Types :
    * Key-Value Stores
    * Document-DB
    * Wide-Column Databases
    * Graph Databases

![alt text](shots/6.PNG)

### Goal: To Set up a database

#### On-premises

* To setup a Microsoft SQL Server on a Windows Server
* Download SQL Server and install it
* Once the installation is done, try installing Azure Data Studio to connect to the database

### AWS with Managed Database

* Launch the RDS service and select options

![alt text](shots/7.PNG)

* We have selected some options and clicked on create database
* We got features like shown below already configured
    * Vertical scaling
    * Replications
    * Backups

#### NOTE

* Databases are generally servers which are connect from clients in 3 popular ways
    * command line
    * GUI
    * Code (SDK)

![alt text](shots/8.PNG)

* Azure Data Studio is a UI Based Client which supports connecting to
    * Microsoft SQL server
    * mysql
    * postgres

### Database Engines Supported by AWS

* Relational Databases
    * Existing Engines:
        * Oracle
        * Microsoft SQL Server
        * PostgreSQL
        * mySQL
        * maria db
    * AWS Managed Engines
        * PostgreSQL => RDS (AWS Aurora for Postgres)
        * mysql => RDS (AWS Aurora for mysql)
        * Oracle, MSSQL, mysql, maria db, postgres =>RDS

* NOSQL:
    * Engines:
        * AWS Dynamo DB
        * Neptune (Graph Database)
        * QLDB (Ledger [Block chain] )
        * Timestream
    * AWS Managed Engines
        * Mongo db => Document DB
        * Cassandra => KeySpaces
        * Redis => Amazon Memory DB for Redis
        * Redis,Memcached => Elastic Cache

#### What to expect from managed databases

* Features
    * automatic backups
    * Setting replications
    * Firewalls around databases
    * Disaster Recovery

#### What not to expect from managed databases

* Older version support
* shell access into os
* performance tuning will not be managed, you should still do this

#### Terms

* Service: What aws offers
    * Ownership: AWS
* Resource: What we create.
    * Ownership: you
* Cloud Services Provider (CSP)
* Cloud Services Consumer

### Services

* Relational Databases: AWS RDS (Relational Database Service)
* NoSQL:
    * Dynamo DB
    * Document DB
    * KeySpaces DB
    * Neptune
* Cache:
    * Elastic Cache
    * Memory DB
* Block Chain
    * QLDB
* IOT
    * Timeseries DB
* DataWarehouse:
    * Redshift

#### Using Database on AWS has 3 wider options

* Use Managed Databases
* Create your own ec2 instance and manually install/configure database
* Search for Market place ec2 ami which helps in pre installed databases

#### Licensing

* AWS supports two kinds of Licensing
    * Software cost per hour
    * BYOL (Bring your own license)

### RDS

* AWS Relational Database Services offers fully managed databases for relational DBMS
* RDS supports
    * mysql
    * mariadb
    * postgres
    * sql server
    * oracle

#### AWS RDS Details

* Overview

![alt text](shots/9.PNG)

* AWS creates db instance in a subnet (AZ) of any network (vpc)
* AWS expects us to provide more than one subnet while creating databases, this is referred as db subnet group
* AWS VPC by default allows all traffic internally i.e. all private communication is allowed
* If your application and rds is in same vpc all you need to know is names(ip addresses)
* If your application and rds are in different networks we need some extra configuration at networking level
    * VPC peering
    * VPN
* RDS features

![alt text](shots/10.PNG)

#### Create a RDS mysql instance (free-tier)

* Free tier Details: AWS Free Tier includes 750hrs of Amazon Relational Database Service (RDS) in a db.t2.micro, db.t3.micro, and db.t4g.micro Instances, 20GB of Storage, and 20GB for Backups each month, for one year.
* Steps


