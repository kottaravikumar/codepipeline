#!/bin/sh

# Kill the existing process.
set -e
echo $(ps aux | grep 'codepipeline' | awk '{print $2}' | head -n 1)
kill -9 $(ps aux | grep 'codepipeline' | awk '{print $2}' | head -n 1)