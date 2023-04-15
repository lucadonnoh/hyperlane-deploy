#!/bin/bash

export DOCKER_IMAGE=gcr.io/abacus-labs-dev/hyperlane-agent:debafb9-20230414-183521

docker run -it --env-file validator1.env --mount type=bind,source=/Users/donnoh/dev/hackathon/tokyo/hyperlane-deploy/artifacts/agent_config.json,target=/config/agent_config.json,readonly -e CONFIG_FILES=/config/agent_config.json -v /tmp/hyperlane-validator-signatures-ethereum1:/tmp/hyperlane-validator-signatures-ethereum1 $DOCKER_IMAGE ./validator
