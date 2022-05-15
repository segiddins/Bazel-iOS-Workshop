#!/usr/bin/env bash

# set -x

function try() {
    $1
    if [[ $? -eq 0 ]]; then
        return
    fi
    echo "Running \"${1}\" failed, $2"
    exit 1
}

bazelisk=$(which bazelisk)
if [[ $? -ne 0 ]]; then
    try "brew install bazelisk" "install bazelisk according to the instructions in https://github.com/bazelbuild/bazelisk#installation"
fi

buildifier=$(which buildifier)
if [[ $? -ne 0 ]]; then
    try "brew install buildifier" "install buildifier via homebrew"
fi

printf "\nChecking that bazelisk is installed...\n"
try "bazelisk version" "try installing 'bazelisk' via 'brew install bazelisk'"
printf "\nDownloading bazel dependencies...\n"
try "bazelisk fetch @build_bazel_rules_apple//apple/... @com_google_protobuf//:BUILD @rules_java//java:BUILD @rules_python//python:BUILD @zlib//:BUILD.bazel" "make sure you're connected to the internet!"
printf "\nRunning bazel build...\n"
try "bazelisk build ..." "ask me for help in Discord!"

printf "\n\nSetup complete! Bazel $(<.bazelversion) is installed and necessary dependencies have been downloaded\n"
