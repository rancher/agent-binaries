#!/bin/sh

cp /nsenter /socat /install

if [ -n "$CHOWN_USER" ]; then
    chown ${CHOWN_USER} /install/{nsenter,socat}
fi
