#!/bin/bash

array=(27017 27018 27019)
for i in "${array[@]}"; do
  mongo --port "$i" -u "admin" -p "test" <<EOF
use blockchain
db.dropDatabase()
EOF
done
