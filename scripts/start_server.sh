#!/bin/sh

echo "Entered to start server applicaiton..."
cd /tmp/app/

java -jar codepipeline-0.0.1-SNAPSHOT.jar > out.log 2>&1 &

