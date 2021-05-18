#!/usr/bin/env bash
. ${GW_HOME}/gw
cd $(dirname $(select_gradle))
CMD="--cmd=git $@"
gradle exec --threads=1 "$CMD"
