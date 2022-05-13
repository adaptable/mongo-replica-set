# MongoDB Replica Set

A Replica Set of MongoDB running in a Docker container.

This image is useful for doing local development and for automated testing in a CI environment but should **NOT be used for production**.

## Running MongoDB

To run the MongoDB replica set, execute the following command:

```shell
docker run -d -p 27017-27019:27017-27019 adaptable/mongo-replica-set
```

Wait for 30 to 35 seconds in order to properly start all database instances and for replica set initialization.

## Persisting data

With the above command, any data stored in the MongoDB cluster is deleted when the Docker container is removed.
To persist the database data beyond the lifetime of the container, use a [Docker volume](https://docs.docker.com/storage/volumes/).

For example, to store the database data to a directory on your local system:

```shell
docker run -d -p 27017-27019:27017-27019 -v "${HOME}/my-mongo-data:/data" adaptable/mongo-replica-set
```

## Connecting to the cluster

Once ready, the replica set can be accessed using the following connection string:

```shell
mongodb://localhost:27017/?replicaSet=rs0&readPreference=primary&ssl=false
```
