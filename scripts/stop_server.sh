#!/bin/sh

# Kill the existing process.
kill -9 $(ps aux | grep 'codepipeline' | awk '{print $2}')