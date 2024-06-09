#!/bin/sh

ip link add vxcan1 type vxcan peer name vxcan0
ip link set vxcan1 up
ip link add vxcan3 type vxcan peer name vxcan2
ip link set vxcan3 up
cangw -A -s can0 -d vxcan1 -e
cangw -A -s can0 -d vxcan3 -e
