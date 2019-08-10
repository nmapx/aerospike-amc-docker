#!/usr/bin/env bash

set -e

if [ "$1" = "amc" ]
    then exec /opt/amc/amc
fi

exec $@
