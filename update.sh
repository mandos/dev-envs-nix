#!/usr/bin/env bash

for dir in $(ls -d */); do
  pushd $dir
  nix flake update
  popd
done
