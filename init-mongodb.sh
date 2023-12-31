#!/bin/bash
set -e

mongo <<EOF
use $MONGO_INITDB_DATABASE
requests = db.getSiblingDB('go-fifa-parser')
requests.createUser({
  user:  '$MONGO_USERNAME',
  pwd: '$MONGO_PASSWORD',
  roles: [{
    role: 'readWrite',
    db: 'go-fifa-parser'
  }]
})
EOF
