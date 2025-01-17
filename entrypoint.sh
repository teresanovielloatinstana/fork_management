#!/bin/bash
echo "entrypoint"
git config --global --add safe.directory /agent-go

env
pwd
ls -lart

# Run the actual command (e.g., bash or other processes)
exec $@
