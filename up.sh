#!/bin/bash

# WARNING: The gui application in this container *might* enjoy best being spun down by down.sh (rather than quitting the window itself from alt-f4)

# WARNING: This container has issues spinning up sometimes? Could be a host dbus thing. Running up.sh a couple times usually spins it up (mebbe add a wait period in up.sh?).

# todo add some kind of logic to grab pid / container id and see if it stays alive long enough, 1-sec retries up to N-number of times (set var)

# Cleanup from any previous un-clean spindowns (the container seems to like starting from a clean state best)
# docker compose down > /dev/null

mkdir -p ./tmp/local/share/gtg
mkdir -p ./tmp/config/gtg
mkdir -p ./tmp/cache/gtg

# todo check out that how-to geek article for securing xhost
xhost +

# Start docker service
docker compose up --detach
