#!/usr/bin/env bash

CMD="--cmd=git $@"
gw exec --threads=1 "$CMD"
