#!/bin/sh

# Kill the existing process.
set -e
echo $(ps aux | grep 'codepipeline' | awk '{print $2}' | head -n 1)

{ # try
    kill -9 $(ps aux | grep 'codepipeline' | awk '{print $2}' | head -n 1)
} || { # catch
    echo "No such process running"
}