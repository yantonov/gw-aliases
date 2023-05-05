#!/usr/bin/env bash
set -o errexit -o nounset

echo "Check compile java task"
COMPILE_JAVA=$(gw tasks --all | grep 'compileJava' | head -n 1 || "")
echo "Check compile scala task"
COMPILE_SCALA=$(gw tasks --all | grep 'compileScala' | head -n 1 || "")

if [ -n "${COMPILE_JAVA}" ]; then
    echo "Compile java ..."
    gw compileJava compileTestJava
fi

if [ -n "${COMPILE_SCALA}" ]; then
    echo "Compile scala ..."
    gw compileScala compileTestScala
fi

