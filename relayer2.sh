#!/bin/bash

export DOCKER_IMAGE=gcr.io/abacus-labs-dev/hyperlane-agent:debafb9-20230414-183521

docker run -it --env-file relayer2to1.env --mount type=bind,source=/tmp/hyperlane-validator-signatures-ethereum2,target=/tmp/hyperlane-validator-signatures-ethereum2,readonly --mount type=bind,source=/Users/donnoh/dev/hackathon/tokyo/hyperlane-deploy/artifacts/agent_config.json,target=/config/agent_config.json,readonly --mount type=bind,source=/tmp/db2,target=/tmp/db2 -e CONFIG_FILES=/config/agent_config.json $DOCKER_IMAGE ./relayer