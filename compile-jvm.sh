#!/usr/bin/env bash
set -o errexit -o nounset

COMPILE_JAVA=$(gw tasks --all | grep 'compileJava' | head -n 1 || "")
COMPILE_SCALA=$(gw tasks --all | grep 'compileScala' | head -n 1 || "")

if [ -n "${COMPILE_JAVA}" ]; then
    gw compileJava compileTestJava
fi

if [ -n "${COMPILE_SCALA}" ]; then
    gw compileScala compileTestScala
fi

