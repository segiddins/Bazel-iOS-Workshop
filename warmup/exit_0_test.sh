#!/bin/sh

set -ex

exit_0=$(rlocation __main__/warmup/exit_0)
$exit_0
exit_code=$?
test $exit_code -eq 0
