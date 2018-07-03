#!/bin/bash

sh /home/training/ksql/bin/ksql-datagen schema=/home/training/customers.avro format=json topic=customers key=id  maxInterval=10 iterations=10

echo "Press Enter if the prompt control does not return"

sh /home/training/ksql/bin/ksql-datagen -daemon schema=/home/training/ratings.avro format=json topic=ratings key=rating_id  maxInterval=10 iterations=50000

/home/training/ksql/bin/ksql-cli local --properties-file /home/training/ksql/ksql.properties