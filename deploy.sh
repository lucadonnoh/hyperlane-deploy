#!/bin/bash

yarn ts-node scripts/deploy-hyperlane.ts --local sepolia \
  --remotes scroll \
  --key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

yarn ts-node scripts/deploy-hyperlane.ts --local scroll \
  --remotes sepolia \
  --key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

