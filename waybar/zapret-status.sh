#!/bin/sh
message="zapret is "
message+=$(systemctl is-active zapret)

echo "${message}"
