#!/bin/bash

mongod --dbpath ${DB1_DATA_DIR} --logpath ${DB1_LOG_DIR}/mongod.log --fork --port 27017 --bind_ip_all --replSet $REPLICA_SET
mongod --dbpath ${DB2_DATA_DIR} --logpath ${DB2_LOG_DIR}/mongod.log --fork --port 27018 --bind_ip_all --replSet $REPLICA_SET
mongod --dbpath ${DB3_DATA_DIR} --logpath ${DB3_LOG_DIR}/mongod.log --port 27019 --bind_ip_all --replSet $REPLICA_SET
