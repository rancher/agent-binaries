#!/bin/bash

source ${CATTLE_HOME:-/var/lib/cattle}/common/scripts.sh

cd $(dirname $0)

mkdir -p ${CATTLE_HOME}/bin

cp dist/nsenter dist/socat ${CATTLE_HOME}/bin
