#!/bin/bash
set -e

source "/opt/ros/$ROS_DISTRO/setup.bash"
source "/opt/parrot-olympe/native-wrapper.sh"
export PYTHONPATH=$PYTHONPATH:/opt/parrot-olympe/usr/lib/python3.8/site-packages

exec "$@"
