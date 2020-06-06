#!/bin/bash

OS_TYPE=`uname`

[[ "$OS_TYPE" == "Darwin" ]] && $(dirname $0)/macos/install.sh
# TODO: check ubuntu and manjaro
[[ "$OS_TYPE" == "Linux" ]] && $(dirname $0)/ubuntu/install.sh

$(dirname $0)/install-common.sh

