### Databases

* Database is a collection of information
* Database Management Systems are softwares / engines which allow multiple users to parallelly work with data ( Read / Write )
    * Read -> Select
    * Write -> Create / Update / Insert
* Database types :
    * Relational Databases
    * NOSQL Databases
    * Data Warehouse

![alt text](shots/1.PNG)

### Relational Databases

* Relational Database, where we design the data in terms of `Tables with Rows and Columns`. The structure of the table is called as _**Schema**_
* Each `Row` represents a _**Record**_
* Tables will have `relations` between them :
    * one – one
    * one – many
    * many – one
    * many – many

![alt text](shots/2.PNG)

* To work with databases, a formal language called as _**SQL (Structured Query Language )**_ exists
* Popular Database Engines :
    * Microsoft SQL Server
    * Oracle
    * mySQL
    * mariaDB
    * PostgreSql
    * DB2

* Databases are used from `application code` as well as `db client software` to deal with data

![alt text](shots/3.PNG)

* Scaling helps in solving the needs, as the usage grows :
    * _**Vertical Scaling**_ : increasing hardware or system resources ( increases the size practically )
    * _**Horizontal Scaling**_ : increasing number of servers running databases ( increases the no.of machines to work on )
* Relational databases donot have inbuilt support for horizontal scaling
* Replications need to be setup ( with horizontzl scaling ), for `bidirectional transfers` ( DBA skills are required )

![alt text](shots/4.PNG)

* Majority of the applications read data ( doesn't change the data ) more than writing ( Changes the data )

![alt text](shots/5.PNG)

* Administration :
    * Installation / Patching / Configuring
        * OS
        * DBMS
    * User managment
    * Connection management
    * Backups and recovery
    * Performance tuning
    * Replications

### NOSQL Databases

* _**NOSQL (Not only SQL)**_ databases are used to store semi-structured information
* They are designed to support :
    * inbuilt horizontal scaling
    * semi-structured
    * don’t impose strict schema’s
* Types of NOSQL databases :
    * Key-Value stores
    * Document-DB
    * Wide-Column 
    * Graph 

![alt text](shots/6.PNG)

### Goal : To set up a database

#### On-premises

* To setup a `Microsoft SQL Server` on a `Windows Server`, download SQL Server and install it
* Once the installation is done, try installing `Azure Data Studio` to connect to the database

### AWS with Managed Database

* Launch the RDS service and select options

![alt text](shots/7.PNG)

=> RDS => Databases => Create database => select some required options => Create database

* We got features like shown below already configured :
    * Vertical scaling
    * Replications
    * Backups

#### NOTE :

* Databases are generally servers which are connected from clients in three popular ways :
    * Command Line
    * GUI
    * Code (SDK)

![alt text](shots/8.PNG)

* _**Azure Data Studio**_ is a UI based Client which supports connecting to :
    * Microsoft SQL server
    * mysql
    * postgres

### Database Engines supported by AWS

#### Relational Databases
    
* Existing engines :
    * Oracle
    * Microsoft SQL Server
    * PostgreSQL
    * mySQL
    * maria db
* AWS managed engines :
    * PostgreSQL => RDS ( AWS Aurora for Postgres )
    * mysql => RDS ( AWS Aurora for mysql )
    * Oracle, MS-SQL, mysql, maria DB, postgres =>RDS

#### NOSQL 
    
* Engines :
    * AWS Dynamo DB
    * Neptune ( Graph database )
    * QLDB ( Ledger [ Block chain ] )
    * Timestream
* AWS managed engines :
    * Mongo DB => Document DB
    * Cassandra => KeySpaces
    * Redis => Amazon Memory DB for Redis
    * Redis, Memcached => Elastic Cache

#### What to expect from managed databases ?

* Features :
    * automatic backups
    * setting replications
    * Firewalls around databases
    * Disaster recovery

#### What not to expect from managed databases ?

* Older version support
* Shell access into OS
* Performance tuning will not be managed ( you should still do this )

#### Terms

* _**Service**_ : What aws offers
    * Ownership : AWS
* _**Resource**_ : What we create
    * Ownership: you
* _**Cloud Services Provider (CSP)**_
* _**Cloud Services Consumer**_

### Services

* _**Relational Databases**_ : AWS RDS ( Relational Database Service )
* _**NoSQL**_ :
    * Dynamo DB
    * Document DB
    * KeySpaces DB
    * Neptune
* _**Cache**_ :
    * Elastic Cache
    * Memory DB
* _**Block Chain**_ :
    * QLDB
* _**IOT**_ :
    * Timeseries DB
* _**DataWarehouse**_ :
    * Redshift

#### Using Database on AWS has three wider options :

* Use Managed Databases
* Create your own ec2 instance and manually install / configure database
* Search for Market place ec2 AMI which helps in pre-installed databases

### Licensing

* AWS supports two kinds of Licensing :
    * Software cost per hour
    * BYOL ( Bring your own license )

### RDS

*  _**Relational Database Services**_ offers fully managed databases for relational DBMS ( DataBase Management System )
* RDS supports :
    * mysql
    * mariadb
    * postgres
    * sql server
    * oracle

#### RDS Details

* Overview

![alt text](shots/9.PNG)

* AWS creates db instance in a subnet ( AZ ), of any network ( VPC )
* AWS expects us to provide more than one subnet while creating databases, this is referred as `DB Subnet Group`
* AWS VPC by default allows all traffic internally i.e. all private communication is allowed
* If your application and rds is in _**same vpc**_, all you need to know is _**names ( ip addresses )**_
* If your application and rds are in _**different networks**_, we need some _**extra configuration**_ at networking level :
    * VPC peering
    * VPN

#### RDS features

![alt text](shots/10.PNG)

#### Create a RDS mysql instance ( free-tier )

* _**Free-tier details**_ :  includes 750hrs of Amazon `Relational Database Service ( RDS )` in a db.t2.micro, db.t3.micro, and db.t4g.micro Instances, 20GB of Storage and 20GB for backups each month, for span of one year

* _**STEPS**_ :

=> RDS => Create database => Standard create 

![alt text](shots/18.PNG)

=>Engine options => Engine type : MySQL

![alt text](shots/19.PNG)

=> Engine Version : MySQL 8.0.35 => Templates : Free tier

![alt text](shots/20.PNG)

=> DB instance identifier : qtdemosrv => Credentials => Master username : qtdevops

![alt text](shots/21.PNG)

=> Master password : qtdevops => Confirm password 

![alt text](shots/22.PNG)

=> DB instance class : Burstable classes (includes t classes) => type : db.t3.micro

![alt text](shots/23.PNG)

=> Storage type : General purpose SSD (gp2) => Allocated storage : 20

![alt text](shots/24.PNG)

=> Connectivity => Compute resource : Don't connect to an EC2 compute resource => Network type : IPv4 => Virtual private cloud (VPC) : Default VPC 

![alt text](shots/25.PNG)

=> DB subnet group : default => Public access : No => VPC security group : Choose existing 

![alt text](shots/26.PNG)

=> Existing VPC : default => Create database

![alt text](shots/27.PNG)
![alt text](shots/28.PNG)
![alt text](shots/29.PNG)

### AWS Interfaces

* We have three popular interfaces to work with AWS :
    * _**Using Browser**_ : AWS Console 
    
    [ Refer Here : https://us-east-1.console.aws.amazon.com/console/home?region=us-east-1 ]

    * _**Using Commands**_ : AWS CLI
    * _**Using Code**_ :
        * Python Boto3
        * Other AWS SDK

#### Let's create a single mysql database managed by aws (RDS)

* _**Cost Aspects**_ : For pricing calculator

    [ Refer here : https://calculator.aws/#/ ]

    * Prices vary from region to region
    * _**Pricing Choices**_ :
        * _**On-demand**_ :
            * No-Commitments
        * _**Reservations**_ (might not be available for all services) :
            * We give commitment to AWS for 1 or 3 years
    * _**Charges**_ :
        * RDS
        * storage
        * backup
* _**Right Sizing**_ :
    * _**Instance classes**_ : For db instance type

        [Refer here : https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#Concepts.DBInstanceClass.Types ]

        * _**Memory Optimized**_ : High Memory to CPU Ratio
        * _**General Purpose**_ : Balanced CPU to Memory Ratio
        * _**Burstable**_
    * _**Storage**_ :
        * _**Types**_ :
            * General purpose
            * Provisioned
        * _**Size**_ :
            * Fixed
            * AutoScaled
    * _**Backup**_ : Size of backup directly propotional to costs

### Scenario :

* Your organization has a mysql database for `dev environment` which runs on Linux VM with  :
    * 2 vCPUs
    * 8 GB of RAM
    * 100 GB Harddisk (20 GB is used and 80 GB is free)
    * Size: db.t3.large
* Your organization has a postgres database which requires caching ( requires decent memory ) :
    * 8 vCPU
    * 32 GB
    * 100 GB ( used: 80 GB )
    * _**Size**_ : `db.r5.xlarge` or `db.r5.2xlarge`
    * _**Storage**_ : min, _**Size**_ : 80 Autoscaling till 200 GB

### Single-AZ v/s Multi-AZ deployment in aws RDS

#### Single-AZ Deployment
    
* _**Overview**_ : RDS will be created in any one AZ in db subnet group

![alt text](shots/11.PNG)

* _**No Failover**_ : If the database fails we have to rely on our backups to create a new database
* Recommended for _**dev/test**_ environments
* To make it work for production, backup strategies have to be decent

#### Multi - AZ Deployment
    
* _**Overview**_ : 
    * RDS will create a `Main / Master` and `Standby` DB instance in two different AZ
    * Any changes in _**Main/Master**_ will be synced to _**Standby**_ ( i.e. a DB statement will be complete only when it is synced with _**Standby**_ )
    * Automatic Failover between `Master` and `Standby` is available
    * _**Main / Master**_ and _**Standby**_ will be of same size
    * RDS Endpoint is a DNS name which points to _**Main / Master**_ and if failover happens it points to _**Standby**_

![alt text](shots/12.PNG)
    
* Recommeded for running production instances
* _**Read Replicas**_ can be created in same region or cross region. Read Replicas help in unloading the _**Main / Master**_ db instance with read traffic

![alt text](shots/13.PNG)

### Creating a Read Replica

* Create a free-tier mysql RDS instance `qtrdsnopcommerce`

![alt text](shots/30.PNG)

* Ensure backups are enabled

=> select the database created => Go to Maintenance and backups => Actions => Turn on backups => Apply immediately => Turn on backups

![alt text](shots/31.PNG)

* Create read replica

=> select the database created => Actions => Create read replica

![alt text](shots/32.PNG)

=> DB instance identifier : qtrdsreadnopcommerce

![alt text](shots/33.PNG)

=> AWS Region : select the region of choice

![alt text](shots/34.PNG)

=> Storage => Storage type : General purpose SSD (gp2) => Allocated storage : 200 GB

![alt text](shots/35.PNG)

=> Availability : Single AZ => Maintenance 

![alt text](shots/36.PNG)
![alt text](shots/37.PNG)
![alt text](shots/38.PNG)

=> Enable auto minor version upgrade => Create read replica

![alt text](shots/39.PNG)
![alt text](shots/40.PNG)

### Multi-Az Deployment

#### Scenario: 

* Let's create a multi az rds mysql db instance and then create a read replica in a different region
* With multi az, we get HA( Highly Available ) and auto failover. This is generally used in production
* The cross region read replica is to offload the read traffic for analytics / Business Intelligence applciations
* Create a multi AZ DB instance with mysql of size t2.micro or t3.micro, storage => gp2 (20GB), new security group

=> RDS => Create database => database creation method : Standard create => Engine type : MySQL => Engine version : select the latest => Templates : Free tier => Settings => DB instance identifier : qtrdsreaddemo => Master username : qtdevops => Master password : qtdevops => Confirm password => instance configuration => select Burstable classes => size : db.t3.micro => Storage => type : gp2 => Allocated storage : 20 GB => Unselect storage autoscaling => Public access : yes => vpc security group : select with openall => Backup => enable automated backups => 1 day => Create database 

![alt text](shots/41.PNG)

* Create a read replica in different region

=> select the database created => Actions => create read replica => DB instance identifier : qtrdsread => AWS region : select other region => Availability => select Multi-AZ DB instance => Create read replica

![alt text](shots/42.PNG)
![alt text](shots/43.PNG)

### Aurora Architecture

* Aurora for mysql gives five times improvement and Aurora for postgres gives three times imporovement in query performance
* _**Aurora Architecture**_ : 

    [ Refer Here : https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.html ] 

![alt text](shots/14.PNG)

* _**Features of Aurora**_ :

    [ Refer Here : https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.AuroraFeaturesRegionsDBEngines.grids.html ]

### RDS Proxy

* Supported for internal / private connections with in AWS from serverless to database
* RDS Proxy makes database HA ( Highly Available ) by reusing database connections

![alt text](shots/15.PNG)

* Serverless Databases

    [ Refer Here : https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.Aurora_Fea_Regions_DB-eng.Feature.ServerlessV2.html ]

* RDS DB Cluster

    [ Refer Here : https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html ]

![alt text](shots/16.PNG)

### AWS RDS Backups

* _**RDS backup**_ :
    * Takes full backup during maintenance window
    * Incremental backups are taken multiple times
    * _**POINT**_ in time restore enables transactional log backup

### NoSQL Databases on AWS

* Types :
    * Key-Value stores
    * Wide Column 
    * Document 
    * Graph 
* AWS gives managed options :
    * Dynamo DB ( Propietry database by AWS )
    * Document DB ( Mongo on AWS )
    * Key Spaces (  Cassandra on AWS )
    * Neptune ( Graph Database )

### Dynamo DB

* Create a table in Dynamo DB

=> Dynamo DB => Tables => Create table => Table name : qtdynamodb => Partition key : id 

![alt text](shots/44.PNG)

=> Table settings : Default settings 

![alt text](shots/45.PNG)

=> Create table

![alt text](shots/46.PNG)
![alt text](shots/47.PNG)

* Who will use these tables ?
    * _**Write code**_ : 
    
    [ Refer Here : https://docs.aws.amazon.com/code-library/latest/ug/python_3_dynamodb_code_examples.html ]

* _**Sample code**_ :
```
import boto3

def create_dynamo_client():
    dynamo_client  =  boto3.resource(service_name = 'dynamodb',region_name = 'us-east-1',
              aws_access_key_id = 'AKIA3BS5NFXXXXXXX',
              aws_secret_access_key = 'qfGTJL28HrqcbhKCM0t//xxx7gTGG4iNrv3/d94Lsp')
    return dynamo_client

def get_table(dynamo_client):
    sample_table = dynamo_client.Table('qtdynamodb')
    return sample_table

def create_ticket(table):
    table.put_item(Item = {
        'id': '1',
        'movie': 'avengers',
        'theatre': 'pvr',
        'username': 'qtdevops'
    })

def get_ticket(table):
    item = table.get_item(Key = {'id': '1'})

if __name__ == "__main__":
    dynamo_client = create_dynamo_client()
    table = get_table(dynamo_client)
    create_ticket()
    get_ticket()
```
### Dynamo DB Sizes

* For capacity modes :

    [ Refer here : https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ServiceQuotas.html#default-limits-throughput-capacity-modes ]

* Dynamo Db supports two capacity modes :
    * On-demand
    * Provisioned

#### Activity : Create a provisioned dynamodb

* Create a dynamo db table

=> Navigate through Dynamo DB => Tables => Create table => Table name : employees => Partition key : id => Create table

![alt text](shots/48.PNG)

* Let's create global table by adding other region replicas

=> select table => click on Global tables => Create replica 

![alt text](shots/49.PNG)

=> choose a region => Create replica

![alt text](shots/50.PNG)

* The above table supports multi region write database
* Now add some items in one region and edit in other, sync should happen immediatly

=> Dynamo DB => Explore items => Create item 

![alt text](shots/51.PNG)

=> Form view => Attributes => partition key - value : 1001 => Add new attribute => String => name : qt => Create item

![alt text](shots/52.PNG)
![alt text](shots/53.PNG)

=> Go to the replica created region => select the item => Actions => Edit item

![alt text](shots/54.PNG)

=> name : NewName => Save and close

![alt text](shots/55.PNG)
![alt text](shots/56.PNG)

=> select the item => Actions => Edit item => Add new attribute => Number => mobile : 9876543210 => Save and close

![alt text](shots/57.PNG)
![alt text](shots/58.PNG)

#### Activity : Enable PITR ( Point In Time Restore )

* Edit PITR

=> Dynamo DB => Tables => Edit PITR

![alt text](shots/59.PNG)

=> Turn on point-in-time recovery => Save changes

![alt text](shots/60.PNG)

=> Status on

![alt text](shots/61.PNG)

#### Activity : Backup Configuration

* Configure Backup

=> Dynamo DB=> Backups => Create backup => Ondemand backup => Backup settings => Default settings=> Create backup

![alt text](shots/62.PNG)
![alt text](shots/63.PNG)

#### Activity : Export to S3

=> Dynamo DB => Export to s3 

![alt text](shots/64.PNG)

#### Dynamo DB Accelarator

* This is quick and very fast in-memory database

#### Reservations in Dynamo DB

* For documentation 

    [ Refer Here : https://docs.aws.amazon.com/whitepapers/latest/cost-optimization-reservation-models/amazon-dynamodb-reservations.html ]

#### Amazon Document DB ( Fully managed mongo db )

* Pricing 

    [ Refer Here : https://aws.amazon.com/documentdb/pricing/ ]

=> Amazon DocumentDB => Launch Amazon DocumentDB => Cluster type : Instance Based Cluster => Instance class => Number of instances => Authentication => Username : qtdevops => Password : qtdevops => Confirm password => Create cluster

![alt text](shots/65.PNG)
![alt text](shots/66.PNG)
![alt text](shots/67.PNG)

#### Exercise

* Try creating keyspaces 

    [ Refer Here : https://aws.amazon.com/keyspaces/pricing/ ]

### Cache Databases

* To store infrequently changed and frequently accesed data in RAM, _**Cache Database**_ have became popular. Some of the databases are :
    * Redis
    * Memcached
* Cache databases also started supporting `write` and `sync` to database
* AWS has launched `Elastic Cache` which supports both _**memcached**_ and _**redis**_ managed by AWS
* Recently they have launched `AWS Memory database` which is _**Redis**_ managed by AWS
* _**Other databases**_ :
    * Key Spaces ( Managed Cassandra )
    * Quantum DB ( Ledger based configuration )
    * Time Series DB ( IOT based cconfiguration )
    * Neptune ( Graph databases )

### AWS CLI

* AWS has three interfaces to communicate :
    * _**Web interface**_ : AWS `Console console.aws.amazone.com`
    * _**Command Line interface**_ : AWS CLI
    * _**Code interface**_ : SDK ( boto3, java sdk, .net )
* CLI Interfaces help us in `automation`
* AWS Programmatic and console access :

![alt text](shots/17.PNG)

* Create an IAM user with Access Keys
* Installing AWS CLI 

    [ Refer Here : https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html ]

* Configuring Access key and Secret access key at `aws configure`

#### Activity : Set up AWS CLI and configure IAM user

* Check if aws cli is working or not
```
aws s3 ls
```
![alt text](shots/68.PNG)

* Ensure visual studio code is installed

* Installing and setting up AWS CLI 

    [ Refer Here : https://www.youtube.com/watch?v=HSScHRcO0CA&list=PLuVH8Jaq3mLszrC7lv68a0VcrDripW-HK&index=5 ]

#### Activity : Get RDS db instances and other info

* For aws rds cli
    [ Refer here : https://docs.aws.amazon.com/cli/latest/reference/rds/ ]
* list or get => describe, list, get
* Get all db instances in a required region 

![alt text](shots/69.PNG)

* AWS CLI output formats :

    [ Refer Here : https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-output-format.html ]

![alt text](shots/70.PNG)

* Get all subnet groups

![alt text](shots/71.PNG)

* Here we have a output in _**JSON**_ format to understand it better

![alt text](shots/72.PNG)
![alt text](shots/73.PNG)

#### Activity : Let's create a shell script to use AWS CLI to create rds mysql instance

* STEPS :
    * We need a security group for the below port :
        * mysql : 3306 ( port )
    * We need a db subnet group `default` or `create one`
    * We need to create a free-tier eligible db instance
        * Instance class  : db.t2.micro
        * Storage Size : 20 GB

* Creating security group ( over command line ending lines with _**`**_ ( tick ) )
```
#!/bin/bash ( when using bash, end the below lines with `\` )

aws ec2 create-security-group `
    --description "rds mysql security group" `
    --group-name "mysqlsg" `
    --vpc-id "vpc-09390292253d984a4"`
    --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=mysqlsg}]"
```
* output ( expected ) :
```
{
    "GroupId": "sg-0827e04cf2eeadbf9",
    "Tags": [
        {
            "Key": "Name",
            "Value": "mysqlsg"
        }
    ]
}
```
##### Note : Add 3306 open rule to every one

* Setting ingress for security group created ( inbound rules ) ( over command line ending lines with _**`**_ ( tick ) )
```
#!/bin/bash ( when using bash, end the below lines with `\` )

aws ec2 authorize-security-group-ingress `
    --group-id sg-0827e04cf2eeadbf9 `
    --protocol tcp `
    --port 3306 `
    --cidr 0.0.0.0/0
```
* output ( expected ) :
```
{
    "Return": true,
    "SecurityGroupRules": [
        {
            "SecurityGroupRuleId": "sg-0827e04cf2eeadbf9",
            "GroupId": "sg-0827e04cf2eeadbf9",
            "GroupOwnerId": "891376970974",
            "IsEgress": false,
            "IpProtocol": "tcp",
            "FromPort": 3306,
            "ToPort": 3306,
            "CidrIpv4": "0.0.0.0/0"
        }
    ]
}
```
* Create a mysql rds instance ( over command line ending lines with _**`**_ ( tick ) )
```
#!/bin/bash ( when using bash, end the below lines with `\`)

aws rds create-db-instance `
   --db-name 'employees' `
   --db-instance-identifier 'qtemployeesdbinst' `
   --allocated-storage 20 `
   --db-instance-class "db.t2.micro" `
   --engine "mysql" `
   --master-username "qtdevops" `
   --master-user-password "qtdevops" `
   --backup-retention-period 0 `
   --no-multi-az `
   --no-auto-minor-version-upgrade `
   --publicly-accessible `
   --vpc-security-group-ids "sg-0827e04cf2eeadbf9"
```
* output ( expected ) :
```
{
    "DBInstance": {
        "DBInstanceIdentifier": "qtemployeesdbinst",
        "DBInstanceClass": "db.t2.micro",
        "Engine": "mysql",
        "DBInstanceStatus": "creating",
        "MasterUsername": "qtdevops",
        "DBName": "employees",
        "AllocatedStorage": 20,
        "PreferredBackupWindow": "21:33-22:03",
        "BackupRetentionPeriod": 0,
        "DBSecurityGroups": [],
        "VpcSecurityGroups": [
            {
                "VpcSecurityGroupId": "sg-0827e04cf2eeadbf9",
                "Status": "active"
            }
        ],
        "DBParameterGroups": [
            {
                "DBParameterGroupName": "default.mysql8.0",
                "ParameterApplyStatus": "in-sync"
            }
        ]
    }
}                
```
* Merge above all together in order to create a proper instance `activity-1.sh`

![alt text](shots/74.PNG)

* Write a script to create a security group and then let's make it reusable ( over command line ending lines with _**`**_ ( tick ) )
* We have made the script partially reusable with `vpc-id` to _**{VPC_ID}**_ and `group-id` to _**{SG_ID}**_ and add `port : 3306` open rule to every one (  _**cidr : 0.0.0.0/0**_ ) :
```
#!/bin/bash ( when using bash and end the below lines with `\`)

VPC_ID=$(aws ec2 describe-vpcs --filters "Name=is-default,Values=true" --query "Vpcs[0].VpcId" --output text)

echo "Found default vpc with id ${VPC_ID}"

SG_ID=$(aws ec2 create-security-group `
    --description "rds mysql security group" `
    --group-name "mysqlsg" `
    --vpc-id ${VPC_ID}`
    --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=mysqlsg}]" `
    --query "GroupId" `
    --output text)

echo "Created security group with id ${SG_ID}"

OUTPUT=$(aws ec2 authorize-security-group-ingress \
    --group-id ${SG_ID} \
    --protocol tcp \
    --port 3306 \
    --cidr 0.0.0.0/0)

```

#### Optimizing CLI script further

* Bash cheatsheet 

    [ Refer Here : https://devhints.io/bash ]

* For the changes done `create-rds.sh` with new arguments
```
#!/bin/bash

assign_default_if_empty() {
    if [[ -z $1 ]]; then
        echo "$2"
    else
        echo "$1"
    fi
}

# First argument DB_ENGINE
DB_ENGINE=$(assign_default_if_empty "$1" 'mysql')

# Second argument is DB_INSTANCE_CLASS
DB_INSTANCE_CLASS=$(assign_default_if_empty "$2" 'db.t2.micro')

# Third argument is DBINSTANCE_IDENTIFIER
DBINSTANCE_IDENTIFIER=$(assign_default_if_empty "$3" 'qtemployeesdbinst')

# Fourth argument is DB_NAME
DB_NAME=$(assign_default_if_empty "$4" 'employees')

# Fifth argument is username
USER_NAME=$(assign_default_if_empty "$5" 'qtdevops')

# sixth argument is password
USER_PASSWORD=$(assign_default_if_empty "$6" 'qtdevops')

# 7 = size in gb
SIZE_IN_GB=$(assign_default_if_empty "$7" 20)

# 8 = Display output
DISPLAY_OUTPUT=$(assign_default_if_empty "$8" 'NO')

VPC_ID=$(aws ec2 describe-vpcs --filters "Name=is-default,Values=true" --query "Vpcs[0].VpcId" --output text)

DBINSTANCE_IDENTIFIER='qtemployeesdbinst'

# DB_NAME='employees'
# SIZE_IN_GB=20
# DB_INSTANCE_CLASS='db.t2.micro'
# DB_ENGINE='mysql'
# USER_NAME='qtdevops'
# USER_PASSWORD='qtdevops'
# DISPLAY_OUTPUT='NO'

echo "Found default vpc with id ${VPC_ID}"

# Get count of security groups with matching name
SG_COUNT=$(aws ec2 describe-security-groups --query "length(SecurityGroups[?GroupName=='mysqlsg'])")

if [[ ${SG_COUNT} == "0" ]]; then
    SG_ID=$(aws ec2 create-security-group \
        --description "rds mysql security group" \
        --group-name "mysqlsg" \
        --vpc-id "${VPC_ID}"\
        --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=mysqlsg}]" \
        --query "GroupId" \
        --output text)
    echo "Created security group with id ${SG_ID}"

    ### Add 3306 open rule to every one

    OUTPUT=$(aws ec2 authorize-security-group-ingress \
        --group-id "${SG_ID}" \
        --protocol tcp \
        --port 3306 \
        --cidr 0.0.0.0/0)

    if [[ ${DISPLAY_OUTPUT} != "NO" ]]; then
        echo "${OUTPUT}"

    fi
else
    SG_ID=$(aws ec2 describe-security-groups \
        --query "SecurityGroups[?GroupName=='mysqlsg'].GroupId" \
        --output text)
    echo "Found security group with id ${SG_ID}"
fi

exit 0

# Create a mysql rds instance

# shellcheck disable=SC2317

OUTPUT=$(aws rds create-db-instance \
   --db-name "${DB_NAME}" \
   --db-instance-identifier "${DBINSTANCE_IDENTIFIER}" \
   --allocated-storage "${SIZE_IN_GB}" \
   --db-instance-class "${DB_INSTANCE_CLASS}" \
   --engine "${DB_ENGINE}" \
   --master-username "${USER_NAME}" \
   --master-user-password "${USER_PASSWORD}" \
   --backup-retention-period 0 \
   --no-multi-az \
   --no-auto-minor-version-upgrade \
   --publicly-accessible \
   --vpc-security-group-ids "${SG_ID}")

# shellcheck disable=SC2317

if [[ ${DISPLAY_OUTPUT} != "NO" ]]; then
    echo "${OUTPUT}"
fi
```

* We have added positional parameters
* We have created security group if it doesnot exist with the help of
    * bash
    * jmespath
* Try creating rds if it doesnot exists
* For the changes `create-rds-exist.sh`
```
#!/bin/bash
assign_default_if_empty() {
    if [[ -z $1 ]]; then
        echo "$2"
    else
        echo "$1"
    fi
}

# First argument DB_ENGINE
DB_ENGINE=$(assign_default_if_empty "$1" 'mysql')

# Second argument is DB_INSTANCE_CLASS
DB_INSTANCE_CLASS=$(assign_default_if_empty "$2" 'db.t2.micro')

# Third argument is DBINSTANCE_IDENTIFIER
DBINSTANCE_IDENTIFIER=$(assign_default_if_empty "$3" 'qtemployeesdbinst')

# Fourth argument is DB_NAME
DB_NAME=$(assign_default_if_empty "$4" 'employees')

# Fifth argument is username
USER_NAME=$(assign_default_if_empty "$5" 'qtdevops')

# sixth argument is password
USER_PASSWORD=$(assign_default_if_empty "$6" 'qtdevops')

# 7 = size in gb
SIZE_IN_GB=$(assign_default_if_empty "$7" 20)

# 8 = Display output
DISPLAY_OUTPUT=$(assign_default_if_empty "$8" 'NO')

VPC_ID=$(aws ec2 describe-vpcs --filters "Name=is-default,Values=true" --query "Vpcs[0].VpcId" --output text)

DBINSTANCE_IDENTIFIER='qtemployeesdbinst'

# DB_NAME='employees'
# SIZE_IN_GB=20
# DB_INSTANCE_CLASS='db.t2.micro'
# DB_ENGINE='mysql'
# USER_NAME='qtdevops'
# USER_PASSWORD='qtdevops'
# DISPLAY_OUTPUT='NO'

echo "Found default vpc with id ${VPC_ID}"

# Get count of security groups with matching name

SG_COUNT=$(aws ec2 describe-security-groups --query "length(SecurityGroups[?GroupName=='mysqlsg'])")

if [[ $SG_COUNT == "0" ]]; then
    SG_ID=$(aws ec2 create-security-group \
        --description "rds mysql security group" \
        --group-name "mysqlsg" \
        --vpc-id "${VPC_ID}"\
        --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=mysqlsg}]" \
        --query "GroupId" \
        --output text)

    echo "Created security group with id ${SG_ID}"

    ### Add 3306 open rule to every one

    OUTPUT=$(aws ec2 authorize-security-group-ingress \
        --group-id "${SG_ID}" \
        --protocol tcp \
        --port 3306 \
        --cidr 0.0.0.0/0)
    if [[ $DISPLAY_OUTPUT != "NO" ]]; then
        echo "${OUTPUT}"
    fi
else
    SG_ID=$(aws ec2 describe-security-groups \
        --query "SecurityGroups[?GroupName=='mysqlsg'].GroupId" \
        --output text)
    echo "Found security group with id ${SG_ID}"
fi

RDS_INSTANCE_COUNT=$(aws rds describe-db-instances --query "length(DBInstances[?DBInstanceIdentifier=='${DBINSTANCE_IDENTIFIER}'])" )

if [[ $RDS_INSTANCE_COUNT == '0' ]]; then

    # Create a mysql rds instance

    OUTPUT=$(aws rds create-db-instance \
    --db-name "${DB_NAME}" \
    --db-instance-identifier ${DBINSTANCE_IDENTIFIER} \
    --allocated-storage "${SIZE_IN_GB}" \
    --db-instance-class "${DB_INSTANCE_CLASS}" \
    --engine "${DB_ENGINE}" \
    --master-username "${USER_NAME}" \
    --master-user-password "${USER_PASSWORD}" \
    --backup-retention-period 0 \
    --no-multi-az \
    --no-auto-minor-version-upgrade \
    --publicly-accessible \
    --vpc-security-group-ids "${SG_ID}")

    if [[ $DISPLAY_OUTPUT != "NO" ]]; then
        echo "${OUTPUT}"
    fi
else
    echo "Found db instance with name ${DBINSTANCE_IDENTIFIER}"
fi
```
* `rds.json`
```
{
    "DBInstances": [
        {
            "DBInstanceIdentifier": "qtemployeesdbinst",
            "DBInstanceClass": "db.t2.micro",
            "Engine": "mysql",
            "DBInstanceStatus": "available",
            "MasterUsername": "qtdevops",
            "DBName": "employees",
            "Endpoint": {
                "Address": "qtemployeesdbinst.cxucejrlqdsi.ap-south-1.rds.amazonaws.com",
                "Port": 3306,
                "HostedZoneId": "Z2VFMSZA74J7XZ"
            },
            "AllocatedStorage": 20,
            "InstanceCreateTime": "2023-05-18T04:25:47.670000+00:00",
            "PreferredBackupWindow": "17:11-17:41",
            "BackupRetentionPeriod": 0,
            "DBSecurityGroups": [],
            "VpcSecurityGroups": [
                {
                    "VpcSecurityGroupId": "sg-0827e04cf2eeadbf9",
                    "Status": "active"
                }
            ],
            "DBParameterGroups": [
                {
                    "DBParameterGroupName": "default.mysql8.0",
                    "ParameterApplyStatus": "in-sync"
                }
            ],
            "AvailabilityZone": "us-east-1a",
            "DBSubnetGroup": {
                "DBSubnetGroupName": "default",
                "DBSubnetGroupDescription": "default",
                "VpcId": "vpc-09390292253d984a4",
                "SubnetGroupStatus": "Complete",
                "Subnets": [
                    {
                        "SubnetIdentifier": "subnet-0a222d2680f2d418e",
                        "SubnetAvailabilityZone": {
                            "Name": "us-east-1a"
                        },
                        "SubnetOutpost": {},
                        "SubnetStatus": "Active"
                    },
                    {
                        "SubnetIdentifier": "subnet-01a521bd65d271918",
                        "SubnetAvailabilityZone": {
                            "Name": "us-east-1b"
                        },
                        "SubnetOutpost": {},
                        "SubnetStatus": "Active"
                    },
                    {
                        "SubnetIdentifier": "subnet-08859a66dd2f26443",
                        "SubnetAvailabilityZone": {
                            "Name": "us-east-1c"
                        },
                        "SubnetOutpost": {},
                        "SubnetStatus": "Active"
                    }
                ]
            },
            "PreferredMaintenanceWindow": "thu:11:34-thu:12:04",
            "PendingModifiedValues": {},
            "MultiAZ": false,
            "EngineVersion": "8.0.32",
            "AutoMinorVersionUpgrade": false,
            "ReadReplicaDBInstanceIdentifiers": [],
            "LicenseModel": "general-public-license",
            "OptionGroupMemberships": [
                {
                    "OptionGroupName": "default:mysql-8-0",
                    "Status": "in-sync"
                }
            ],
            "PubliclyAccessible": true,
            "StorageType": "gp2",
            "DbInstancePort": 0,
            "StorageEncrypted": false,
            "DbiResourceId": "db-5URJF63VXMKUJTKZJZ2ZFWWG5I",
            "CACertificateIdentifier": "rds-ca-2019",
            "DomainMemberships": [],
            "CopyTagsToSnapshot": false,
            "MonitoringInterval": 0,
            "DBInstanceArn": "arn:aws:rds:ap-south-1:678879106782:db:qtemployeesdbinst",
            "IAMDatabaseAuthenticationEnabled": false,
            "PerformanceInsightsEnabled": false,
            "DeletionProtection": false,
            "AssociatedRoles": [],
            "TagList": [],
            "CustomerOwnedIpEnabled": false,
            "ActivityStreamStatus": "stopped",
            "BackupTarget": "region",
            "NetworkType": "IPV4",
            "StorageThroughput": 0
        }
    ]
}
``` 
### Activities using CLI

#### Create a mysql free tier db with 2 days backup

* Add a read replica in different region
* For the shell script with named arguments `create-rds-named.sh`
```
#!/bin/bash

# lets process arguments
DBINSTANCE_IDENTIFIER="qtmysqlsrv"
DB_ENGINE='mysql'
DB_INSTANCE_CLASS='db.t2.micro'
USER_NAME='qtdevops'
USER_PASSWORD='qtdevops'
DB_NAME='sample'
SIZE_IN_GB=20
DISPLAY_OUTPUT='NO'
BACKUP_PERIOD=0
IS_READ_REPLICA_REQUIRED=0
READ_REPLICA_REGION='us-east-1'
while (( $# )); do
    if [[ $1 == "--name" ]]; then
        DBINSTANCE_IDENTIFIER=$2
    elif [[ $1 == "--engine" ]]; then
        DB_ENGINE=$2
    elif [[ $1 == "--instance-class" ]]; then
        DB_INSTANCE_CLASS=$2
    elif [[ $1 == "--username" ]]; then
        USER_NAME=$2
    elif [[ $1 == "--password" ]]; then
        USER_PASSWORD=$2
    elif [[ $1 == "--size" ]]; then
        SIZE_IN_GB=$2
    elif [[ $1 == "--display-output" ]]; then
        DISPLAY_OUTPUT=$2
    elif [[ $1 == "--db-name" ]]; then
        DB_NAME=$2
    elif [[ $1 == "--backup-in-days" ]]; then
        BACKUP_PERIOD=$2
    else
        echo "This script creates rds instance"
        echo "usage: "
        echo "./createrdsnamed.sh --name <db-instance-identifier> 
            --username <username> --password <password> \
            --engine <engine-name> --instance-class <instanceclass> \
            --size <size in gb> --db-name <name of your db> \
            --display-output <NO/YES>"
        echo "\n \n default values are"
        echo "aws rds create-db-instance \

    --db-name ${DB_NAME} \
    --db-instance-identifier ${DBINSTANCE_IDENTIFIER} \
    --allocated-storage ${SIZE_IN_GB} \
    --db-instance-class ${DB_INSTANCE_CLASS} \
    --engine ${DB_ENGINE} \
    --master-username ${USER_NAME} \
    --master-user-password ${USER_PASSWORD} \
    --backup-retention-period 0 \
    --no-multi-az \
    --no-auto-minor-version-upgrade \
    --publicly-accessible"

        exit
    fi
    shift
    shift
done
VPC_ID=$(aws ec2 describe-vpcs --filters "Name=is-default,Values=true" --query "Vpcs[0].VpcId" --output text)

echo "Found default vpc with id ${VPC_ID}"

SG_COUNT=$(aws ec2 describe-security-groups --query "length(SecurityGroups[?GroupName=='mysqlsg'])")
if [[ $SG_COUNT == "0" ]]; then
    SG_ID=$(aws ec2 create-security-group \
        --description "rds mysql security group" \
        --group-name "mysqlsg" \
        --vpc-id "${VPC_ID}"\
        --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=mysqlsg}]" \
        --query "GroupId" \
        --output text)
    echo "Created security group with id ${SG_ID}"

    ### Add 3306 open rule to every one

    OUTPUT=$(aws ec2 authorize-security-group-ingress \
        --group-id "${SG_ID}" \
        --protocol tcp \
        --port 3306 \
        --cidr 0.0.0.0/0)

    if [[ $DISPLAY_OUTPUT != "NO" ]]; then
        echo "${OUTPUT}"

    fi
else
    SG_ID=$(aws ec2 describe-security-groups \
        --query "SecurityGroups[?GroupName=='mysqlsg'].GroupId" \
        --output text)
    echo "Found security group with id ${SG_ID}"
fi

RDS_INSTANCE_COUNT=$(aws rds describe-db-instances --query "length(DBInstances[?DBInstanceIdentifier=='${DBINSTANCE_IDENTIFIER}'])" )

if [[ $RDS_INSTANCE_COUNT == '0' ]]; then

    # Create a mysql rds instance
    OUTPUT=$(aws rds create-db-instance \
    --db-name "${DB_NAME}" \
    --db-instance-identifier "${DBINSTANCE_IDENTIFIER}" \
    --allocated-storage "${SIZE_IN_GB}" \
    --db-instance-class "${DB_INSTANCE_CLASS}" \
    --engine "${DB_ENGINE}" \
    --master-username "${USER_NAME}" \
    --master-user-password "${USER_PASSWORD}" \
    --backup-retention-period "${BACKUP_PERIOD}" \
    --no-multi-az \
    --no-auto-minor-version-upgrade \
    --publicly-accessible \
    --vpc-security-group-ids "${SG_ID}")

    if [[ $DISPLAY_OUTPUT != "NO" ]]; then
        echo "${OUTPUT}"
    fi
else
    echo "Found db instance with name ${DBINSTANCE_IDENTIFIER}"
fi
```
* For doc's

    [ Refer here : https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance-read-replica.html ]

* For creating db instance `read identifier` use _**interpolation**_ :
```
DBREADINSTANCE_IDENTIFIER="${DBINSTANCE_IDENTIFIER}-read"
```