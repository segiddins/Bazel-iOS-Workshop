#!/bin/sh

set -x

exit_1=$(rlocation __main__/warmup/exit_1)
$exit_1
exit_code=$?
test $exit_code -eq 1
