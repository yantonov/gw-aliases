#!/usr/bin/env bash
set -o errexit -o nounset

echo "Check compile java task"
COMPILE_JAVA=$(timeout 5 gw tasks --all | grep 'compileJava' | head -n 1 || "")
if [ $? -ne 0 ]; then
    echo "checking compile java task failed"
    exit 1
fi

echo "Check compile scala task"
COMPILE_SCALA=$(timeout 5 gw tasks --all | grep 'compileScala' | head -n 1 || "")
if [ $? -ne 0 ]; then
    echo "checking compile scala task failed"
    exit 1
fi

if [ -n "${COMPILE_JAVA}" ]; then
    echo "Compile java ..."
    gw compileJava compileTestJava
fi

if [ -n "${COMPILE_SCALA}" ]; then
    echo "Compile scala ..."
    gw compileScala compileTestScala
fi

