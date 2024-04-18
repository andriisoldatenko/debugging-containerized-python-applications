#!/bin/sh
set -e

cmd="python -m uvicorn main:app --port 8000 --host 0.0.0.0"

if [ "$REMOTE_DEBUG_PORT" ]; then
  echo "Starting application with remote debugging on port $REMOTE_DEBUG_PORT"
  debugFlags="--wait-for-client --listen 0.0.0.0:$REMOTE_DEBUG_PORT -m uvicorn main:app --port 8000 --host 0.0.0.0"
  # Simply setting this environment variable is enough to force the debugger to
  # pause on start --- we don't care about the value.
  cmd="python -m debugpy $debugFlags"
fi

echo "Executing command: $cmd $*"

exec $cmd "$@"