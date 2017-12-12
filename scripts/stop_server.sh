#!/bin/bash
set -e

proc_id=`ps aux | grep '[c]odepipeline' | awk '{print $2}'`

echo "$proc_id"

echo "$proc_id of codepipeline process"

if [[ -z "$proc_id" ]]; then
    echo "No process found with codepipeline"
else
    echo "Found codepipeline process, kill the process to start a process with new revision."
    echo "kill -9 " $proc_id
    kill -9 $proc_id
fi