#!/bin/sh

rm -f kayla/dev/app/tmp/pids/server.pid
bin/rails server -b 0.0.0.0