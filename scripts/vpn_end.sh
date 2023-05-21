#! /bin/bash

TUNNEL="tun1"

ifconfig "$TUNNEL" down
openvpn --rmtun --dev "$TUNNEL"

