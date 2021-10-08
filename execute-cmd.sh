#!/usr/bin/env bash

CMD="--cmd=$@"
gw exec --threads=1 "$CMD"
