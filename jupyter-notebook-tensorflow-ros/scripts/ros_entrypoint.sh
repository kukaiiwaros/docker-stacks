#!/bin/bash
set -e

sudo /containerinit.sh

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"

# start supervisor
sudo /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf

# start CMD
exec "$@"
