#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
if [ -f /realfevr_api/tmp/pids/server.pid ]; then
  rm /realfevr_api/tmp/pids/server.pid
fi

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
