#!/bin/bash
echo "entrypoint"
git config --global --add safe.directory /agent-go

# Run the actual command (e.g., bash or other processes)
exec $@
