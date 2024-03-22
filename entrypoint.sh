#!/bin/bash
set -e

rm -f /rails_app/tmp/pids/server.pid

exec "$@"