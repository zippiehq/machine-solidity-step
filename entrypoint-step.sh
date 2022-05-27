#!/bin/sh

# run ganache in quiet mode to increase performance
ganache-cli --host 0.0.0.0  > /dev/null 2>&1 &
./deploy_step_tests.sh > /dev/null 2>&1

# wait forever
tail -f /dev/null