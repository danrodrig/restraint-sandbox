#!/bin/bash

VALGRIND_LOG=${VALGRIND_LOG:-/tmp/restraintd-vg_$(date +%s).log}

exec valgrind --leak-check=full --log-file="${VALGRIND_LOG}" restraintd "$@"
