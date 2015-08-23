#!/bin/bash

source ${CATTLE_HOME:-/var/lib/cattle}/common/scripts.sh

cd $(dirname $0)

mkdir -p ${CATTLE_HOME}/bin

command -v nsenter > /dev/null || {
    cp dist/nsenter ${CATTLE_HOME}/bin
    chmod +x ${CATTLE_HOME}/bin/nsenter
}

command -v socat > /dev/null || {
    cp dist/socat ${CATTLE_HOME}/bin
    chmod +x ${CATTLE_HOME}/bin/socat
}
