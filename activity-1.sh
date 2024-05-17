#!/bin/bash

aws ec2 create-security-group \
    --description "rds mysql security group" \
    --group-name "mysqlsg" \
    --vpc-id "vpc-09390292253d984a4"\
    --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=mysqlsg}]"

# {
#     "GroupId": "sg-0827e04cf2eeadbf9",
#     "Tags": [
#         {
#             "Key": "Name",
#             "Value": "mysqlsg"
#         }
#     ]
# }

### Add 3306 open rule to every one
aws ec2 authorize-security-group-ingress \
    --group-id sg-0827e04cf2eeadbf9 \
    --protocol tcp \
    --port 3306 \
    --cidr 0.0.0.0/0
# {
#     "Return": true,
#     "SecurityGroupRules": [
#         {
#             "SecurityGroupRuleId": "sg-0827e04cf2eeadbf9",
#             "GroupId": "sg-0827e04cf2eeadbf9",
#             "GroupOwnerId": "891376970974",
#             "IsEgress": false,
#             "IpProtocol": "tcp",
#             "FromPort": 3306,
#             "ToPort": 3306,
#             "CidrIpv4": "0.0.0.0/0"
#         }
#     ]
# }

# Create a mysql rds instance

aws rds create-db-instance \
   --db-name 'employees' \
   --db-instance-identifier 'qtemployeesdbinst' \
   --allocated-storage 20 \
   --db-instance-class "db.t2.micro" \
   --engine "mysql" \
   --master-username "qtdevops" \
   --master-user-password "qtdevops" \
   --backup-retention-period 0 \
   --no-multi-az \
   --no-auto-minor-version-upgrade \
   --publicly-accessible \
   --vpc-security-group-ids "sg-0827e04cf2eeadbf9"

# {
#     "DBInstance": {
#         "DBInstanceIdentifier": "qtemployeesdbinst",
#         "DBInstanceClass": "db.t2.micro",
#         "Engine": "mysql",
#         "DBInstanceStatus": "creating",
#         "MasterUsername": "qtdevops",
#         "DBName": "employees",
#         "AllocatedStorage": 20,
#         "PreferredBackupWindow": "21:33-22:03",
#         "BackupRetentionPeriod": 0,
#         "DBSecurityGroups": [],
#         "VpcSecurityGroups": [
#             {
#                 "VpcSecurityGroupId": "sg-0827e04cf2eeadbf9",
#                 "Status": "active"
#             }
#         ],
#         "DBParameterGroups": [
#             {
#                 "DBParameterGroupName": "default.mysql8.0",
#                 "ParameterApplyStatus": "in-sync"